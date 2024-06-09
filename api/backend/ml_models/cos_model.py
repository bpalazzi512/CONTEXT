import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.preprocessing import StandardScaler
import requests

class CosineSimilarityModel:

    def __init__(self):
        """
        Initialize the CosineSimilarityModel with a dataframe.
        """
        # Fetch the data from the API
        response = requests.get('http://api:4000/c/country_ml_fields')
        data = response.json() 
        data = pd.DataFrame(data)

        self.merged_df = data
        self.feats = data.columns[1::]
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
        X_scaled_df['0name'] = df['0name']
        X_scaled_df = X_scaled_df.dropna()
        return X_scaled_df

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
        if (feature == "COL"):
            feature = "cost_of_life"
        


        """
        for item in self.merged_df:
            percentiles = np.percentile(float(item[feature]), np.linspace(0, 100, num=101))
            input_percentile_value = np.percentile(float(item[feature]), user_input)
            return input_percentile_value
        """
    def testMethod(self) :
        return self.merged_df

    def get_user_percentiles(self, user_input):
        """
        Translates user inputs for all features to percentiles.

        Parameters:
            user_input (dict): Dictionary of user preference inputs
        
        Returns:
            dict: Dictionary of translated percentiles
        """

        percentiles = {}
        for item in user_input:
            for feature in item:
                percentiles[feature] = self.translate_to_percentiles(user_input=feature, feature=feature)
            return percentiles


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
        preference_data = response.json()  # Assuming the API returns JSON

        # Translate user inputs to percentiles
        user_percentiles = self.get_user_percentiles(preference_data)

        # Create DataFrame from user percentiles
        user_df = pd.DataFrame([user_percentiles])

        # Scale user preferences using the same scaler
        user_scaled = self.scaler.transform(user_df)

        # Calculate cosine similarity
        sim = cosine_similarity(user_scaled, self.X_scaled_df.drop(columns=['country']))
        top_matches = sim[0].argsort()[-top_n:][::-1]

        # Find the matching country
        match_countries = self.X_scaled_df.iloc[top_matches]['country'].values

        # Output the result as a dictionary
        result_dict = {i + 1: country.title() for i, country in enumerate(match_countries)}

        return result_dict

# Example usage:
# cos_model = CosineSimilarityModel()
# result = cos_model.find_closest_country("some_user_id")
# print(result)
