
# Deal with country 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
#from backend.ml_models.model01 import predict
from dotenv import load_dotenv

countries = Blueprint('countries', __name__)

# # Get all countries from the DB
@countries.route('/countries', methods=['GET'])
def get_countries():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute('SELECT * FROM countries')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

# # Get a countries ID given name
@countries.route('/country/<c_name>', methods=['GET'])
def get_countryID(c_name):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    # use cursor to query the database for a list of products
    cursor.execute('SELECT id FROM countries where name = ' + ' \'' + c_name + '\'')
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)


# Get a selected country's details from a countryID
@countries.route('/countries/<countryID>', methods=['GET'])
def get_country_info(countryID):
    current_app.logger.info('GET /countries/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from countries where id = '+ str(countryID))
     # fetch all the data from the cursor
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')

    # for each of the rows, zip the data elements together with
    # the column headers. 
    # for row in theData:
    #     json_data.append(dict(zip(column_headers, row)))

    # return jsonify(json_data)
    return jsonify(theData)

    
# Put (edit) a section of country as admin 
@countries.route('/country/<countryID>', methods=['PUT'])
def edit_country():
    current_app.logger.info('PUT /countries route')
    country_info = request.json
    # current_app.logger.info(cust_info)
    country_id = country_info['id']
    tips = country_info('tips')

    query = 'UPDATE countries SET tips = %s where id = %s'
    data = (tips, country_id)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'customer updated!'

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
