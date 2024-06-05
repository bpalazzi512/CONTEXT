
# Deal with country 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
#from backend.ml_models.model01 import predict
from dotenv import load_dotenv

countries = Blueprint('countries', __name__)

# Get all countries from the DB
@countries.route('/countries', methods=['GET'])
def get_countries():
    current_app.logger.info('countries_routes.py: GET /countries')
    cursor = db.get_db().cursor()
    cursor.execute('select * from countries')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get a selected country's details from a countryID
@countries.route('/countries/<countryID>', methods=['GET'])
def get_country_info(countryID):
    current_app.logger.info('GET /countries/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT id, name, area, population, \
                   happinessindex, railwayLength, unemploymentRate, bio, \
                   tips from countries where id = {0}'.format(countryID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

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
@countries.route('/country/<countryID>/', methods=['GET'])
def get_country_languages(countryID):
    current_app.logger.info('GET /countries/<userID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT l.id, l.name, s.percentage \
                   from language l join speaks s on l.id = s.languageID \
                   join countries c on c.id = s.countryID where c.id = {0}'.format(countryID))
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
@countries.route('/countries', methods=['PUT'])
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
