from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv
from backend.ml_models.cos_model import CosineSimilarityModel as csm
from backend.ml_models.lin_reg_model import CrimeModel
import requests

machine_learning = Blueprint('machine_learning', __name__)

# generate the rankings for a given user
@machine_learning.route('/rankings/<userID>/generate', methods = ['GET'])
def generate_rankings(userID):
    cos_model = csm()
    ranking_dict = cos_model.find_closest_country(userID=int(userID))
    
    return ranking_dict

# Put (edit) the displayed top country rankings
@machine_learning.route('/rankings', methods=['PUT'])
def update_rankings():
    current_app.logger.info('PUT /countries route')
    ranking_info = request.json
    current_app.logger.info(ranking_info)
    
    country_id = ranking_info["countryID"]
    user_id = ranking_info["userID"]
    rank = ranking_info['rankingNum']

    connection = db.get_db()
    cursor = connection.cursor()

    query = 'UPDATE countryRankings SET rankingNum = %s where countryID = %s AND userID = %s'
    cursor.execute(query, (str(rank), str(country_id), str(user_id)))
    connection.commit()
    
    return 'ranking updated!'

# returns the crime training data
@machine_learning.route('crime/training', methods=['GET'])
def get_crime_training():
    current_app.logger.info('GET /ml/crime_training route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM crime_training')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)



# returns the crime prediction for a given country and year
@machine_learning.route('crime/predict/<country>/<year>', methods=['GET'])
def get_crime_prediction(country, year):
    model = CrimeModel()
    country = country[0].upper() + country[1:].lower()
    return [model.predict(country, int(year))]

# returns the crime prediction for a given country and year
@machine_learning.route('crime/predict/<country>', methods=['GET'])
def get_crime_prediction_years(country):
    model = CrimeModel()
    country = country[0].upper() + country[1:].lower()
    years = []
    values = []
    for year in range(2024, 2030):
        years.append(year)
        values.append(model.predict(country, int(year)))
    
    return jsonify({"Year" : years, "Predicted Number of Crimes (Per 100k People)" : values})


# returns the ranking data for a given user
@machine_learning.route('rankings/<userID>', methods=['GET'])
def get_rankings(userID):
    cursor = db.get_db().cursor()
    cursor.execute(f'SELECT rankingNum, countryID FROM countryRankings WHERE userID = {userID} ORDER BY rankingNum')
    theData = cursor.fetchall()
    return jsonify(theData)
    



