from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv
from backend.ml_models.cos_model import CosineSimilarityModel as csm
import requests

machine_learning = Blueprint('machine_learning', __name__)

# generate the rankings for a given user
@machine_learning.route('/rankings/<userID>/generate', methods = ['GET'])
def generate_rankings(userID):
    cos_model = csm()
    ranking_dict = cos_model.find_closest_country(userID=int(userID))

    # for loop which inserts each number and country id into the database
    for i in range(1, len(ranking_dict)+1):
        # get country id from country name
        rankingNum = i
        countryName = ranking_dict[str(i)]
        countryID = requests.get(f'http://api:4000/c/getCountryID/{countryName}').json()[0]['id']

        data = {"rankingNum": rankingNum, "countryID": countryID, "userID": int(userID)}
        requests.put('http://api:4000/ml/rankings', json=data)

    return make_response(jsonify({"message": "Rankings generated successfully"}), 200)

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


# returns the slider data for a given user
@machine_learning.route('sliders/<userID>', methods=['GET'])
def get_sliders(userID):
    cursor = db.get_db().cursor()
    cursor.execute(f'SELECT * FROM sliders WHERE userID = {userID}')
    theData = cursor.fetchall()
    return jsonify(theData)

# updates the slider data for a given user
@machine_learning.route('/sliders', methods = ['PUT'])
def update_country_tips():
    
    try:
        recieved_data = request.json

        weather = int(recieved_data["weather"])
        transport = int(recieved_data["transport"])
        education = int(recieved_data["education"])
        safety = int(recieved_data["safety"])
        pop_density = int(recieved_data["pop_density"])
        healthcare = int(recieved_data["healthcare"])
        leisure = int(recieved_data["leisure"])
        cost_of_life = int(recieved_data["COL"])
        userID = int(recieved_data["userID"])

        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE sliders SET weather = %s, transport = %s, education = %s, safety = %s, pop_density = %s, healthcare = %s, leisure = %s, COL = %s WHERE userID = %s"
        current_app.logger.info(query)
        cursor.execute(query, (weather, transport, education, safety, pop_density, healthcare, leisure, cost_of_life, userID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Sliders updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating sliders, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor:
            cursor.close()
    





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