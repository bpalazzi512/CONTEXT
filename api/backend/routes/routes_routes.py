# For everything routes! 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

routes = Blueprint('routes', __name__)
# get all routes (state, country, load, rate) of given moverID 
@routes.route('/all_routes/<moverID>', methods=['GET'])
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


# # get a specfic route info (*) given routeID
# @routes.route('/routes/<routeID>', methods=['GET'])
# def get_routes(moverID):
#     current_app.logger.info('moverContact.py: GET /moverContact')
#     cursor = db.get_db().cursor()
#     cursor.execute(f'select s.stateName, c.name, r.moveLoad, r.cost \
#                    from states s join routes r on s.id = r.fromStateID \
#                    join countries c on c.id = r.toCountryID \
#                    where r.moverID = {moverID} order by s.stateName')
#     theData = cursor.fetchall()
#     return jsonify(theData)

# Delete a route
@routes.route('/del_routes/<route_id>', methods=['DELETE'])
def delete_route(route_id):
    # Log the incoming request
    current_app.logger.info(f'Request to delete route with ID: {route_id}')
    
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

@routes.route('/get_count', methods=["GET"])
def get_count():
    current_app.logger.info('moverContact.py: GET /moverContact')
    # Execute the query
    cursor = db.get_db().cursor()
    cursor.execute('SELECT COUNT(*) as count FROM routes')
    theData = cursor.fetchall()
    return jsonify(theData)

# Post (add) a new route
@routes.route('/add_route', methods=['POST'])
def add_route():
    
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    # theData = get_count()
    

    #extracting the variable
    id = the_data['id']
    cost = the_data['Rate']
    load = the_data['Load']
    fromStateID = the_data['Origin']
    toCountryID = the_data['Destination']
    moverID = the_data['MoverID']


    # Constructing the query
    query = 'insert ignore into routes (id, cost, moveLoad, fromStateID, toCountryID, moverID) values ('
    query += str(id) + ', '
    query += str(cost) + ', \''
    query += str(load) + '\', '
    query += str(fromStateID) + ', '
    query += str(toCountryID) + ', '
    query += str(moverID) + ')'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Success!'

# Put (edit) tips of a country as admin
@routes.route('/routes_edit', methods = ['PUT'])
def update_route_load():
    try:
        recieved_data = request.json

        load = str(recieved_data["moveLoad"])
        cost = int(recieved_data["cost"])
        routeID = int(recieved_data["id"])

        current_app.logger.info("Updating route: " + str(routeID) + " and tips: " + load)
        connection = db.get_db()
        cursor = connection.cursor()
        
        query = "UPDATE routes SET moveLoad = %s, cost = %s WHERE id = %s"
        current_app.logger.info(f'Updating tips with countryID: {routeID}')
        cursor.execute(query, (load, cost, routeID))
        connection.commit()
        if cursor.rowcount == 0:
            return make_response(jsonify({"error": "ID not found"}), 404)
        return make_response(jsonify({"message": "Move load updated successfully"}), 200)
    except Exception as e:
        current_app.logger.error(f"Error updating moveload with routeID: {routeID}, error: {e}")
        return make_response(jsonify({"error": "Internal server error"}), 500)
    finally:
        if cursor:
            cursor.close()

