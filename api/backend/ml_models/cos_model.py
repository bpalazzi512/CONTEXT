'''
cosine similarity class testframe
uses code initialized in cosine_sim_test.py
author: seamus coyne
date: jun. 8 2024
'''

import pandas as pd
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.preprocessing import StandardScaler

class CosineSimilarityModel:

    def __init__(self, db):
        """
        Initialize the CosineSimilarityModel with a dataframe.

        Parameters:
            merged_df (pd.DataFrame): Dataframe containing all countries data (one line per year)
        """

        cursor = db.get_db().cursor()
        cursor.execute('SELECT * FROM countries')
        theData = cursor.fetchall()

        columns = [desc[0] for desc in cursor.description]

        # Create DataFrame from the fetched data
        data = pd.DataFrame(theData, columns=columns)

        self.merged_df = data
        self.feats = data.columns[1:-1]
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
        X_scaled_df['country'] = df['country']
        X_scaled_df = X_scaled_df.dropna()
        return X_scaled_df

    def find_closest_country(self, user_pref, top_n=5):
        """
        Find the top N closest countries based on user preferences.

        Parameters:
            user_pref (dict): Dictionary of user preference inputs
            top_n (int): Number of closest matches to be used (default is 5)

        Returns:
            list: List of the top N closest country matches
        """
        # Create DataFrame from user preferences
        user_df = pd.DataFrame([user_pref])

        # Scale user preferences using the same scaler
        user_scaled = self.scaler.transform(user_df)

        # Calculate cosine similarity
        sim = cosine_similarity(user_scaled,
                                self.X_scaled_df.drop(columns=['country']))
        top_matches = sim[0].argsort()[-top_n:][::-1]

        # Find the matching country
        match_countries = self.X_scaled_df.iloc[top_matches]['country'].values

        # Output the result
        return [f"match_{i + 1}: {country.title()}" for i, country in
                enumerate(match_countries)]