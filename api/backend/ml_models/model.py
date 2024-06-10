import pandas as pd
import numpy as np
from backend.db_connection import db
from dotenv import load_dotenv
import json



#df_crime_input = pd.read_csv("Phase 3/Data/crime_training.csv")

class CrimeModel:
    def __init__(self):
        
        cursor = db.get_db().cursor()
        cursor.execute('SELECT * FROM crime_inference')
        theData = cursor.fetchall()
    
        data = theData[0]

        countries = []
        regression = []
        for key in data.keys() :
            if key not in ["intercept", "mean", "slope", "std"]:
                countries.append(key)
                regression.append(data[key])
        
        regression.insert(0, data["slope"])
        regression.insert(0, data["intercept"])

        self.countries = countries
        self.regression = np.array(regression)
        self.mean = data["mean"]
        self.std = data["std"]
    
    def add_bias_column(self, X):
        """
        Args:
            X (array): can be either 1-d or 2-d
        
        Returns:
            Xnew (array): the same array, but 2-d with a column of 1's in the first spot
        """
        
        # If the array is 1-d
        if len(X.shape) == 1:
            Xnew = np.column_stack([np.ones(X.shape[0]), X])
        
        # If the array is 2-d
        elif len(X.shape) == 2:
            bias_col = np.ones((X.shape[0], 1))
            Xnew = np.hstack([bias_col, X])
            
        else:
            raise ValueError("Input array must be either 1-d or 2-d")

        return Xnew  
    
    def inferenceTest(self):
        return list(self.regression)



    def line_of_best_fit(self, X, y):
        X = self.add_bias_column(X)
        return np.matmul(np.linalg.inv(np.matmul(X.T, X)), np.matmul(X.T, y))

    

    def train():
        """

        trains time series model based on crime per year per country

        Args:
        crime_df (dataframe) - dataframe with three columns: country, year, and amount of crime per 100k people
        
        Returns:
        regression (array) - array representing intercept and slopes of linear regression
        
        """



        """
        df_crime_scaled = pd.DataFrame()

        df_crime_scaled["country"] = df_crime_input["country"]
        df_crime_scaled["year"] = df_crime_input["year"]
        df_crime_scaled["amount"] = (df_crime_input["amount"] - df_crime_input["amount"].mean()) / df_crime_input["amount"].std()


        df_crime_dummies = df_crime_scaled.join(pd.get_dummies(df_crime_scaled["country"], drop_first=True, dtype='int'))
        
        crime_arr = np.array(df_crime_dummies.drop(columns=["country"]))

        
        

        X_left = crime_arr[:, 0:1]
        X_right = crime_arr[:, 2:]

        

        X = np.hstack((X_left, X_right))
        

        y = crime_arr[:, 1:2]
        
        regression = line_of_best_fit(X, y)
        return regression
        """


    def predict (self, country, year):
        """
        following linear regression model, predicts the total amount of crimes per 100k people 

        Args:
        - country (int) - which country wanted for prediction
        - year (int) - which year we wanted for prediction
        - regression (array) - linear regression intercept and slopes (scaled)
        - mean (int) - mean of original data
        - std (int) - std of original data

        Returns:
        - answer (int) - predicted value for crimes per 100k people 
        
        """

        
        

        encoding = [0] * (len(self.countries))

        if country in self.countries:
            encoding[self.countries.index(country)] = 1
        

        encoding.insert(0, year)
        encoding.insert(0, 1)

        

        

        unscaled_answer = np.matmul(encoding, self.regression)

        answer = unscaled_answer * self.std + self.mean




        

        return max(answer, 0)
        










