
# Deal with moving companies

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

moving_company = Blueprint('moving_company', __name__)

# get moving company for given id
@moving_company.route('/moving/<moverID>', methods=['GET'])
def get_mover(moverID):
    current_app.logger.info(f'/moving/{moverID} GET request recieved')
    cursor = db.get_db().cursor()
    cursor.execute('select * from movers where id = ' + str(moverID))
    data = cursor.fetchall()
    return jsonify(data)


# Get a list of all the countryIDs a moving company can move to
@moving_company.route('/moving/<moverID>/countries', methods=['GET'])
def get_mover_country(moverID):
    current_app.logger.info('GET /moving_company/<moverID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT countryID, c.name \
                   join countries c on c.id = r.countryID where r.moverID = {0}'.format(moverID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    data = cursor.fetchall()
    for row in data:
        json_data.append(dict(zip(row_headers, row)))
    response = make_response(jsonify(json_data))
    response.status_code = 200
    response.mimetype = 'application/json'
    return response

# Get a list of all the stateIDs a moving company can move from
@moving_company.route('/moving/<moverID>/states', methods=['GET'])
def get_country(moverID):
    current_app.logger.info('GET /moving_company/<moverID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT stateID, s.name \
                   join states s on s.id = r.stateID where r.moverID = {0}'.format(moverID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    data = cursor.fetchall()
    for row in data:
        json_data.append(dict(zip(row_headers, row)))
    response = make_response(jsonify(json_data))
    response.status_code = 200
    response.mimetype = 'application/json'
    return response



# Post (add) user to moverContacts 
@moving_company.route('/moving/contacts', methods=['POST'])
def add_user_contact():
    # collecting data from the request object 
    data = request.json
    

    #extracting the variable
    userID = data['userID']
    moverID = data['moverID']
    routeID = data['routeID']

    # Constructing the query
    query = 'insert into moverContacts (userID, moverID, routeID) values ('
    query += str(userID) + ', '
    query += str(moverID) + ', '
    query += str(routeID) + ')'

    current_app.logger.info(userID)
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success!'

# Delete a user from moverContact
@moving_company.route('/moving/contacts', methods=['DELETE'])
def delete_mover_contact():

    data = request.json
    userID = data['userID']
    moverID = data['moverID']
    
    cursor = db.get_db().cursor()
    cursor.execute(f'DELETE FROM moverContacts WHERE userID = {userID} AND moverID = {moverID}')
    db.get_db().commit()
    
    return jsonify({"message": "Mover contact deleted successfully"}), 200


# Get a list of all users (name, email, phone) that contacts a moving company by date
@moving_company.route('/moving/<moverID>/contacts', methods=['GET'])
def get_users(moverID):
    current_app.logger.info('moverContact.py: GET /moverContact')
    cursor = db.get_db().cursor()
    cursor.execute(f'select distinct s.stateName, c.name, r.cost, u.id, u.firstName, u.lastName, u.email, u.phone, mc.dateContacted \
                   from users u join moverContacts mc on u.id = mc.userID join routes r on mc.routeID = r.id join states s on s.id = r.fromStateID join countries c on c.id = r.toCountryID \
                   where mc.moverID = {moverID} order by mc.dateContacted')
    theData = cursor.fetchall()
    return jsonify(theData)


@moving_company.route('/moving', methods=['PUT'])
def update_company():
    cursor = None
    try:
        recieved_data = request.json

        moverID = int(recieved_data['moverID'])
        email = str(recieved_data["email"])
        moverName = str(recieved_data["moverName"])
        phone = str(recieved_data["phone"])
        bio = str(recieved_data['bio'])


        current_app.logger.info("Updating " + moverName)
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE movers SET email = %s, moverName = %s, phone = %s, bio = %s WHERE id = %s"
        current_app.logger.info(f'Updating tips with countryID: {moverID}')
        cursor.execute(query, (email, moverName, phone, bio, moverID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Move load updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating moveload with routeID: {moverID}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor is not None:
            cursor.close()
            

