
# Deal with moving companies

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

moving_company = Blueprint('moving_company', __name__)

# Get a list of all moving companies for a given route 

# Get a list of all the countryIDs a moving company can move to

# Get a list of all the stateIDs a moving company can move from

# Delete a state from a moving company's list of movable states 

# Post (add) a state to a moving company's list of movable states

# Delete a country from a moving company's list of movable countries

# Post (add) a country to a moving company's list of movable locations

# Get a list of all users (name, email, phone) that contacts a moving company