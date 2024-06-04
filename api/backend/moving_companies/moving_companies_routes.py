
# Deal with moving companies

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

moving_company = Blueprint('moving_company', __name__)

# Get a list of all moving companies for a given route 
@moving_company.route('/moving_company', methods=['GET'])
def get_routes():
    current_app.logger.info('moving_company.py: GET /moving_comapny')
    cursor = db.get_db().cursor()
    cursor.execute('select m.id, name, bio, from countries')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
# Get a list of all the countryIDs a moving company can move to

# Get a list of all the stateIDs a moving company can move from

# Delete a state from a moving company's list of movable states 

# Post (add) a state to a moving company's list of movable states

# Delete a country from a moving company's list of movable countries

# Post (add) a country to a moving company's list of movable locations

# Get a list of all users (name, email, phone) that contacts a moving company by date