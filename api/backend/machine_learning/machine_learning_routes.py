from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv
from backend.ml_models.model import CrimeModel

machine_learning = Blueprint('machine_learning', __name__)

@machine_learning.route('crime/training', methods=['GET'])
def get_crime_training():
    current_app.logger.info('GET /ml/crime_training route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM crime_training')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)


@machine_learning.route('crime/predict/<country>/<year>', methods=['GET'])
def get_crime_prediction(country, year):
    model = CrimeModel()
    country = country[0].upper() + country[1:].lower()
    return [model.predict(country, int(year))]

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




"""
@machine_learning.route('/ML/<v01>/<v02>/<v03>/<v04>/<v05>', methods=['GET'])
def predict_value(v01, v02, v03, v04, v05):
    current_app.logger.info(f'var01 = {v01}')
    current_app.logger.info(f'var02 = {v02}')

    returnVal = predict(v01, v02, v03, v04, v05)
    return_dict = {'result': returnVal}

    the_response = make_response(jsonify(return_dict))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
"""