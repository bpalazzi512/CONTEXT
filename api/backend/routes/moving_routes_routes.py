# For everything routes! 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

moving_routes = Blueprint('routes', __name__)

# Get a list of all moving companies for a given route 
@moving_routes.route('/routes/companies', methods=['GET'])
def get_mc_for_route():
    stateID = request.args.get('stateID')
    countryID = request.args.get('countryID')
    moveLoad = request.args.get('moveLoad')

    current_app.logger.info('moving_company.py: GET /moving')
    cursor = db.get_db().cursor()
    query = 'select * from movers m join routes r on m.id = r.moverID \
                   where r.fromStateID = %s and \
                    r.toCountryID = %s and r.moveLoad = %s'
    

    cursor.execute(query, (stateID, countryID, moveLoad))
    data = cursor.fetchall()

    return jsonify(data)



# get all routes (state, country, load, rate) of given moverID 
@moving_routes.route('/routes/<moverID>', methods=['GET'])
def get_routes(moverID):
    current_app.logger.info('moverContact.py: GET /moverContact')
    cursor = db.get_db().cursor()
    cursor.execute(f'select r.id, r.fromStateID, r.toCountryID, r.moverID,\
                    r.moveLoad, r.cost, s.stateName, c.name \
                   from states s join routes r on s.id = r.fromStateID \
                   join countries c on c.id = r.toCountryID \
                   where r.moverID = {moverID} order by s.stateName')
    theData = cursor.fetchall()
    return jsonify(theData)



# Delete a route
@moving_routes.route('/routes/<route_id>', methods=['DELETE'])
def delete_route(route_id):
    # Log the incoming request
    current_app.logger.info(f'/routes/{route_id} DELETE request recieved')
    
    # Construct the SQL query to delete the route
    query = 'DELETE FROM routes WHERE id = ' + str(route_id)
    
    # Execute the query
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    # Check if a row was deleted
    if cursor.rowcount == 0:
        return 'No route found with the specified ID.', 404
    
    return 'Route deleted successfully!', 200

#fromStateID, toCountryID, moverID, id, moveLoad
#gives us arguments through query terms in url (ex. ?stateID=1&countryID=1&moverID=1&moveLoad=1)
@moving_routes.route('/routes/count', methods=["GET"])
def get_route():
    current_app.logger.info('/routes/count GET request recieved')
    stateID = request.args.get("stateID")
    countryID = request.args.get("countryID")
    moverID = request.args.get("moverID")
    moveLoad = request.args.get("moveLoad")

    # Execute the query
    cursor = db.get_db().cursor()
    query = '''SELECT COUNT(*) as count FROM routes 
               WHERE fromStateID = %s AND toCountryID = %s AND moverID = %s AND moveLoad = %s'''
    cursor.execute(query, (stateID, countryID, moverID, moveLoad))
    theData = cursor.fetchall()
    return jsonify(theData)






# Post (add) a new route
@moving_routes.route('/routes', methods=['POST'])
def add_route():
    
    # collecting data from the request object 
    data = request.json
    current_app.logger.info("/routes POST request recieved")

    
    

    #extracting the variable
    cost = data['Rate']
    load = data['Load']
    fromStateID = data['Origin']
    toCountryID = data['Destination']
    moverID = data['MoverID']


    # Constructing the query
    query = f'insert ignore into routes (cost, moveLoad, fromStateID, toCountryID, moverID) values ({cost}, \'{load}\', {fromStateID}, {toCountryID}, {moverID})'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Success!'

# Put (edit) tips of a country as admin
@moving_routes.route('/routes', methods = ['PUT'])
def update_route_load():
    cursor = None
    try:
        recieved_data = request.json

        load = str(recieved_data["moveLoad"])
        cost = int(recieved_data["cost"])
        routeID = int(recieved_data["id"])

        current_app.logger.info("/routes PUT request recieved")
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE routes SET moveLoad = %s, cost = %s WHERE id = %s"
        cursor.execute(query, (load, cost, routeID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Move load updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating moveload with routeID: {routeID}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor is not None:
            cursor.close()

