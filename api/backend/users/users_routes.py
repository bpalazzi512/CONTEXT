
# for users

# Deal with country 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db
#from backend.ml_models.model01 import predict
from dotenv import load_dotenv

users = Blueprint('users', __name__)
# Get a selected users details from userID
@users.route('/users/<userID>', methods=['GET'])
def get_user_info(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from users where id = '+ str(userID))
     # fetch all the data from the cursor
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)


# Put (edit) users profile 

# Put (edit) country admin profile 