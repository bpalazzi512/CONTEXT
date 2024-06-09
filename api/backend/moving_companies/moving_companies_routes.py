
# Deal with moving companies

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

moving_company = Blueprint('moving_company', __name__)

# get moving company for given id
@moving_company.route('/moving_company/<moverID>', methods=['GET'])
def get_mover(moverID):
    current_app.logger.info('moving_company.py: GET /moving_company')
    cursor = db.get_db().cursor()
    cursor.execute('select * from movers where id = ' + str(moverID))
    theData = cursor.fetchall()
    return jsonify(theData)

# Get a list of all moving companies for a given route 
@moving_company.route('/moving_company/<stateID>/<countryID>', methods=['GET'])
def get_mc_for_route(stateID, countryID):
    current_app.logger.info('moving_company.py: GET /moving_company')
    cursor = db.get_db().cursor()
    cursor.execute('select * from movers m join routes r on m.id = r.moverID \
                   where r.fromStateID = ' + str(stateID) + ' and r.toCountryID = ' + str(countryID))
    json_data = []
    theData = cursor.fetchall()

    return jsonify(theData)


# Get a list of all the countryIDs a moving company can move to
@moving_company.route('/moving_company/<moverID>/countries', methods=['GET'])
def get_mover_country(moverID):
    current_app.logger.info('GET /moving_company/<moverID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT countryID, c.name \
                   join countries c on c.id = r.countryID where r.moverID = {0}'.format(moverID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get a list of all the stateIDs a moving company can move from
@moving_company.route('/moving_company/<moverID>/states', methods=['GET'])
def get_country(moverID):
    current_app.logger.info('GET /moving_company/<moverID> route')
    cursor = db.get_db().cursor()
    cursor.execute('SELECT stateID, s.name \
                   join states s on s.id = r.stateID where r.moverID = {0}'.format(moverID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response



# Post (add) user to moverContacts 
@moving_company.route('/userContact', methods=['POST'])
def add_user_contact():
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    userID = the_data['userID']
    moverID = the_data['moverID']
    routeID = the_data['routeID']

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
@moving_company.route('/userContact/<userID>/<moverID>', methods=['DELETE'])
def delete_mover_contact(userID, moverID):
    #user_id = request.args.get('userID')
    #mover_id = request.args.get('moverID')
    
    cursor = db.get_db().cursor()
    cursor.execute(f'DELETE FROM moverContacts WHERE userID = {userID} AND moverID = {moverID}')
    db.get_db().commit()
    
    return jsonify({"message": "Mover contact deleted successfully"}), 200


# Get a list of all users (name, email, phone) that contacts a moving company by date
@moving_company.route('/moverContact/<moverID>', methods=['GET'])
def get_users(moverID):
    current_app.logger.info('moverContact.py: GET /moverContact')
    cursor = db.get_db().cursor()
    cursor.execute(f'select u.id, u.firstName, u.lastName, u.email, u.phone, mc.dateContacted \
                   from users u join moverContacts mc on u.id = mc.userID \
                   where mc.moverID = {moverID} order by mc.dateContacted desc')
    theData = cursor.fetchall()
    return jsonify(theData)


@moving_company.route('/mc_edit', methods=['PUT'])
def update_company():
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
        if cursor:
            cursor.close()

