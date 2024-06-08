from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv

machine_learning = Blueprint('machine_learning', __name__)

@machine_learning.route('crime/training', methods=['GET'])
def get_crime_training():
    current_app.logger.info('GET /ml/crime_training route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM crime_training')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

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