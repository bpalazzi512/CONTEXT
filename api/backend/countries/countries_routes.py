
# Deal with country 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
# from backend.ml_models.model import predict
from dotenv import load_dotenv

countries = Blueprint('countries', __name__)


#get countryID given country name
@countries.route('/get_countryID/<country>', methods=['GET'])
def get_countryID(country):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute(f'SELECT id FROM countries where name = "{country}"')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

#get stateID given state name
@countries.route('/get_stateID/<state>', methods=['GET'])
def get_stateID(state):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute(f'SELECT id FROM states where stateName = "{state}"')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

#get stateID given state name
@countries.route('/get_stateName/<stateID>', methods=['GET'])
def get_stateName(stateID):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute(f'SELECT stateName FROM states where id = {stateID}')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)


# Get all countries from the DB
@countries.route('/countries', methods=['GET'])
def get_countries():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute('SELECT * FROM countries')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

#Get country fields used for ML
@countries.route('/country_ml_fields', methods=['GET'])
def get_country_ml_fields():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute('''
                   SELECT name as name, happinessIndex, crime_safety, avg_temp, cost_of_life, healthcare, education, leisure, rail_density FROM countries
                   ''')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

# # # Get a countries ID given name
# @countries.route('/country/<c_name>', methods=['GET'])
# def get_countryID(c_name):
#     # get a cursor object from the database
#     cursor = db.get_db().cursor()
#     # use cursor to query the database for a list of products
#     cursor.execute('SELECT id FROM countries where name = ' + ' \'' + c_name + '\'')
#     theData = cursor.fetchall()
#     current_app.logger.info(f'theData = {theData}')
#     return jsonify(theData)


# Get a selected country's details from a countryID
@countries.route('/countries/<countryID>', methods=['GET'])
def get_country_info(countryID):
    current_app.logger.info('GET /countries/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from countries where id = '+ str(countryID))
     # fetch all the data from the cursor
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

    
# Put (edit) bio of a country as admin
@countries.route('/country/bio', methods = ['PUT'])
def update_country_bio():
    
    try:
        recieved_data = request.json

        bio = str(recieved_data["bio"])
        countryID = int(recieved_data["countryID"])
        current_app.logger.info("Updating tips for country with countryID: " + str(countryID) + " and bio: " + bio)
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE countries SET bio = %s WHERE id = %s"
        current_app.logger.info(f'Updating post with countryID: {countryID}')
        cursor.execute(query, (bio, countryID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Bio updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating bio with countryID: {countryID}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor:
            cursor.close()

 
# Put (edit) tips of a country as admin
@countries.route('/country/tips', methods=['PUT'])
def update_sliders():
    try:
        recieved_data = request.json


        tips = str(recieved_data["tips"])
        countryID = int(recieved_data["countryID"])
        current_app.logger.info("Updating tips for country with countryID: " + str(countryID) + " and tips: " + tips)
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE countries SET tips = %s WHERE id = %s"
        current_app.logger.info(f'Updating tips with countryID: {countryID}')
        cursor.execute(query, (tips, countryID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Tips updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating tips with countryID: {countryID}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor:
            cursor.close()           
    
    

# Get a list of all the languages for a country
@countries.route('/country/<countryID>/language', methods=['GET'])
def get_country_languages(countryID):
    current_app.logger.info('GET /countries/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT l.id, l.name, s.percentage \
                   from language l join speaks s on l.id = s.languageID \
                   join countries c on c.id = s.countryID where c.id = ' + str(countryID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Put (edit) the displayed top country rankings
@countries.route('/countries/rankings', methods=['PUT'])
def update_rankings():
    current_app.logger.info('PUT /countries route')
    ranking_info = request.json
    country_id = ranking_info['countryID']
    rank = ranking_info('rankingNum')

    query = 'UPDATE countryRanking SET rankingNum = %s where countryID = %s'
    data = (rank, country_id)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'ranking updated!'
