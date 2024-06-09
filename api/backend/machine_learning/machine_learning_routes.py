from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv
from backend.ml_models.cos_model import CosineSimilarityModel as csm
from backend.ml_models.model import CrimeModel
import requests

machine_learning = Blueprint('machine_learning', __name__)

# generate the rankings for a given user
@machine_learning.route('/rankings/<userID>/generate', methods = ['GET'])
def generate_rankings(userID):
    cos_model = csm()
    ranking_dict = cos_model.find_closest_country(userID=int(userID))
    
    return ranking_dict
    # for loop which inserts each number and country id into the database
    for i in range(1, len(ranking_dict)+1):
        # get country id from country name
        rankingNum = i
        countryName = ranking_dict[i]
        
        
        countryID = requests.get(f'http://api:4000/c/get_countryID/{countryName}').json()[0]['id']
        

        data = {"rankingNum": int(rankingNum), "countryID": int(countryID), "userID": int(userID)}
        requests.put('http://api:4000/ml/rankings', json=data)
        return data

    return make_response(jsonify({"message": "Rankings generated successfully"}), 200)

# Put (edit) the displayed top country rankings
@machine_learning.route('/rankings', methods=['PUT'])
def update_rankings():
    current_app.logger.info('PUT /countries route')
    ranking_info = request.json
    current_app.logger.info(ranking_info)
    country_id = ranking_info["countryID"]
    user_id = ranking_info['userID']
    rank = ranking_info['rankingNum']

    query = 'UPDATE countryRankings SET rankingNum = %s where countryID = %s AND userID = %s'
    data = (rank, country_id, user_id)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
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


@machine_learning.route('ranking/test', methods=["GET"])
def get_test_route():
    model = csm()
    return jsonify(model.testMethod())



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
    cursor.execute(f'SELECT avg_temp, rail_density, education, crime_safety, pop_density, healthcare, leisure, cost_of_life FROM sliders WHERE userID = {userID}')
    theData = cursor.fetchall()
    return jsonify(theData)

# updates the slider data for a given user
@machine_learning.route('/sliders', methods = ['PUT'])
def update_country_tips():
    cursor = None
    try:
        recieved_data = request.json

        weather = int(recieved_data["avg_temp"])
        transport = int(recieved_data["rail_density"])
        education = int(recieved_data["education"])
        safety = int(recieved_data["crime_safety"])
        pop_density = int(recieved_data["pop_density"])
        healthcare = int(recieved_data["healthcare"])
        leisure = int(recieved_data["leisure"])
        cost_of_life = int(recieved_data["cost_of_life"])
        userID = int(recieved_data["userID"])

        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE sliders SET avg_temp = %s, rail_density = %s, education = %s, crime_safety = %s, pop_density = %s, healthcare = %s, leisure = %s, cost_of_life = %s WHERE userID = %s"
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
    



