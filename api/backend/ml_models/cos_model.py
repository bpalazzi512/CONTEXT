import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.preprocessing import StandardScaler
from backend.db_connection import db
import requests
from flask import current_app

class CosineSimilarityModel:

    def __init__(self):
        """
        Initialize the CosineSimilarityModel with a dataframe.
        """
        # Fetch the data from the API


        cursor = db.get_db().cursor()
        cursor.execute('SELECT name as name, pop_density, crime_safety, avg_temp, cost_of_life, healthcare, education, leisure, rail_density FROM countries')
        db_data = cursor.fetchall()

        #response = requests.get('http://api:4000/c/country_ml_fields')
        #data = response.json() 
        data = pd.DataFrame(db_data)

        self.merged_df = data

        
        self.feats = self.merged_df.drop(columns=["name"]).columns #data.columns[1::]
        self.scaler = StandardScaler()
        self.X_scaled_df = self._scale_features(data)

    def _scale_features(self, df):
        """
        Scale the features of the dataframe.

        Parameters:
            df (pd.DataFrame): Dataframe to scale

        Returns:
            pd.DataFrame: Scaled dataframe with the 'country' column
        """
        X = df[self.feats]
        X_scaled = self.scaler.fit_transform(X)
        X_scaled_df = pd.DataFrame(X_scaled, columns=self.feats)
        X_scaled_df['name'] = df['name']
        X_scaled_df = X_scaled_df.dropna()
        return X_scaled_df

    #works!!!
    def translate_to_percentiles(self, user_input, feature):
        """
        Translates a user input on a 0-100 scale to the corresponding percentile
        for the given feature in the dataframe.
        
        Parameters:
            user_input (float): User input on a 0-100 scale
            feature (str): Feature name
        
        Returns:
            float: Translated percentile value
        """
        
        self.X_scaled_df[feature] = self.X_scaled_df[feature].astype(float)

        return self.X_scaled_df[feature].quantile(user_input/100)

        """
        for item in self.merged_df:
            percentiles = np.percentile(float(item[feature]), np.linspace(0, 100, num=101))
            input_percentile_value = np.percentile(float(item[feature]), user_input)
            return input_percentile_value
        """

    def testMethod(self) :
        return self.X_scaled_df.to_dict()

    #works!!!
    def get_user_percentiles(self, user_input):
        """
        Translates user inputs for all features to percentiles.

        Parameters:
            user_input (dict): Dictionary of user preference inputs
        
        Returns:
            dict: Dictionary of translated percentiles
        """

        percentiles = {}

        for feature in user_input.keys():
            percentiles[feature] = self.translate_to_percentiles(user_input[feature], feature)
        
        return percentiles

        
        """
        for item in user_input:
            for feature in item:
                percentiles[feature] = self.translate_to_percentiles(user_input=feature, feature=feature)
            return percentiles
        """


    def find_closest_country(self, userID, top_n=27):
        """
        Find the top N closest countries based on user preferences.

        Parameters:
            userID (str): User ID to fetch preferences
            top_n (int): Number of closest matches to be used (default is 27)

        Returns:
            list: List of the top N closest country matches
        """

        response = requests.get(f'http://api:4000/ml/sliders/{userID}')
        preference_data = response.json()[0]



        
        #remove boolean values to see if we should use them and values that shouldnt be used
        dropped = ['name']
        keys = list(preference_data.keys()).copy()
        for key in keys:
            if "_selected" not in key:
                selected = key + "_selected"
                if not preference_data[selected]:
                    dropped.append(key)
                    del preference_data[key]
                del preference_data[selected]



     


        # Translate user inputs to percentiles
        user_percentiles = self.get_user_percentiles(preference_data)



        user_scaled = pd.DataFrame([user_percentiles])


        

        # Calculate cosine similarity, absolute difference if dimension is 1
        if user_scaled.shape[1] == 1:
            differences = None
            val = user_scaled.iloc[0, 0]
            for feature in user_scaled.columns:
                
                differences = abs(val -  self.X_scaled_df[feature])
            differences = differences.tolist()
            sorted_differences = differences.copy()
            
            sorted_differences.sort()
            
        

            result_dict = {}
            i = 1
            countries = self.X_scaled_df["name"].tolist()
            for value in sorted_differences:
                result_dict[i] = countries[differences.index(value)]
                i += 1
            return result_dict
            

        sim = cosine_similarity(user_scaled, self.X_scaled_df.drop(columns=dropped))
       
        top_matches = sim[0].argsort()[-top_n:][::-1]

        # Find the matching country
        match_countries = self.X_scaled_df.iloc[top_matches]['name'].values

        # Output the result as a dictionary
        result_dict = {i + 1: country.title() for i, country in enumerate(match_countries)}

        return result_dict

