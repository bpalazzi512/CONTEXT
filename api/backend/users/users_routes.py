
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

# Get a country admin's profile rom userID
@users.route('/admins/<userID>', methods=['GET'])
def get_admin_info(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from countryAdmins where id = '+ str(userID))
     # fetch all the data from the cursor
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

# Return the rankings for a given user
@users.route('/users/<userID>/rankings', methods=['GET'])
def get_user_rankings(userID):
    cursor = db.get_db().cursor()
    cursor.execute('''
                   SELECT countries.name as countryName, countries.bio, countries.id as countryID FROM countryRankings JOIN countries 
                   ON countryRankings.countryID = countries.id WHERE userID = '''+ str(userID))
    # fetch all the data from the cursor
    theData = cursor.fetchall()
    current_app.logger.info(f'theData = {theData}')
    return jsonify(theData)

# Update the rankings for a given user
@users.route('/users/rankings', methods=['PUT'])
def update_user_rankings():
    data = request.get_json()
    cursor = db.get_db().cursor()
    cursor.execute('''
                   INSERT INTO countryRankings (userID, countryID, ranking) VALUES (%s, %s, %s) ON DUPLICATE KEY UPDATE ranking = %s
                   ''', (data['userID'], data['countryID'], data['ranking'], data['ranking']))
    db.get_db().commit()
    return jsonify({"message": "Rankings updated successfully!"})


# edit users profile
@users.route('/user_edit', methods = ['PUT'])
def edit_user():
    try:
        recieved_data = request.json

        first = str(recieved_data["first"])
        last = str(recieved_data["last"])
        email = str(recieved_data["email"])
        phone = str(recieved_data["phone"])
        age = int(recieved_data["age"])
        stateID = int(recieved_data["stateID"])
        load = str(recieved_data["load"])
        id = int(recieved_data['id'])

        current_app.logger.info("Updating userInfo")
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE users SET firstName = %s, lastName = %s, email = %s, \
            phone = %s, age = %s, homeStateID = %s, moveLoad = %s WHERE id = %s"
        
        cursor.execute(query, (first, last, email, phone, age, stateID, load, id))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Move load updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating moveload with routeID: {id}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor:
            cursor.close()




