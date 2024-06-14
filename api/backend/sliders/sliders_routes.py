from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv
from backend.ml_models.cos_model import CosineSimilarityModel as csm
from backend.ml_models.lin_reg_model import CrimeModel
import requests

sliders = Blueprint('sliders', __name__)

# returns the slider data for a given user
@sliders.route('sliders/<userID>', methods=['GET'])
def get_sliders(userID):

    cursor = db.get_db().cursor()
    cursor.execute(f'SELECT avg_temp, rail_density, education, crime_safety, pop_density, healthcare, leisure, cost_of_life, avg_temp_selected, rail_density_selected, education_selected, crime_safety_selected, pop_density_selected, healthcare_selected, leisure_selected, cost_of_life_selected FROM sliders WHERE userID = {userID}')
    theData = cursor.fetchall()

    if not theData:  # Check if theData is empty
        # Run the additional code if theData is empty
        post_sliders(userID)
        #cursor.execute()
        current_app.logger.info("got here baby")
        theData = [{'avg_temp' : 50, 'rail_density' : 50, 'education' : 50, 'crime_safety' : 50, 'pop_density' : 50, 'healthcare' : 50, 'leisure' : 50, 'cost_of_life' : 50, 'avg_temp_selected' : True, 'rail_density_selected' : True, 'education_selected' : True, 'crime_safety_selected' : True, 'pop_density_selected' : True, 'healthcare_selected' : True, 'leisure_selected' : True, 'cost_of_life_selected' : True}]

    return jsonify(theData)

# post sliders initialized with default values
@sliders.route('sliders/<userID>', methods=['POST'])
def post_sliders(userID):
    connection = db.get_db()
    cursor = connection.cursor()
    
    query = f"INSERT INTO sliders (userID, avg_temp, rail_density, education, crime_safety, pop_density, healthcare, leisure, cost_of_life, avg_temp_selected, rail_density_selected, education_selected, crime_safety_selected, pop_density_selected, healthcare_selected, leisure_selected, cost_of_life_selected) values ('{str(userID)}', 50, 50, 50, 50, 50, 50, 50, 50, True, True, True, True, True, True, True, True)"
    current_app.logger.info(query)
    cursor.execute(query)
    connection.commit()
    return make_response(jsonify({"message": "Sliders added successfully"}), 201)


# updates the slider data for a given user
@sliders.route('/sliders', methods = ['PUT'])
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

        weather_selected = recieved_data["avg_temp_selected"]
        transport_selected = recieved_data["rail_density_selected"]
        education_selected = recieved_data["education_selected"]
        safety_selected = recieved_data["crime_safety_selected"]
        pop_density_selected = recieved_data["pop_density_selected"]
        healthcare_selected = recieved_data["healthcare_selected"]
        leisure_selected = recieved_data["leisure_selected"]
        cost_of_life_selected = recieved_data["cost_of_life_selected"]
        
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE sliders SET avg_temp = %s, rail_density = %s, education = %s, crime_safety = %s, pop_density = %s, healthcare = %s, leisure = %s, cost_of_life = %s, avg_temp_selected = %s, rail_density_selected = %s, education_selected = %s, crime_safety_selected = %s, pop_density_selected = %s, healthcare_selected = %s, leisure_selected = %s, cost_of_life_selected = %s WHERE userID = %s"
        current_app.logger.info(query)
        cursor.execute(query, (weather, transport, education, safety, pop_density, healthcare, leisure, cost_of_life, weather_selected, transport_selected, education_selected, safety_selected, pop_density_selected, healthcare_selected, leisure_selected, cost_of_life_selected, userID))
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