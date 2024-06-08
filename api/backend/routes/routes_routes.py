# For everything routes! 

from flask import Blueprint, request, jsonify, make_response, current_app
import json
from backend.db_connection import db

routes = Blueprint('routes', __name__)
# get all routes (state, country, load, rate) of given moverID 
@routes.route('/routes/<moverID>', methods=['GET'])
def get_routes(moverID):
    current_app.logger.info('moverContact.py: GET /moverContact')
    cursor = db.get_db().cursor()
    cursor.execute(f'select s.stateName, c.name, r.moveLoad, r.cost \
                   from states s join routes r on s.id = r.fromStateID \
                   join countries c on c.id = r.toCountryID \
                   where r.moverID = {moverID} order by s.stateName')
    theData = cursor.fetchall()
    return jsonify(theData)

# Delete a route
@routes.route('/del_routes/<int:route_id>', methods=['DELETE'])
def delete_route(route_id):
    # Log the incoming request
    current_app.logger.info(f'Request to delete route with ID: {route_id}')
    
    # Construct the SQL query to delete the route
    query = 'DELETE FROM routes WHERE id =' + str(route_id)
    
    # Execute the query
    cursor = db.get_db().cursor()
    cursor.execute(query, (route_id,))
    db.get_db().commit()
    
    # Check if a row was deleted
    if cursor.rowcount == 0:
        return 'No route found with the specified ID.', 404
    
    return 'Route deleted successfully!', 200

# Post (add) a new route
@routes.route('/add_route', methods=['POST'])
def add_route():
    
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    cost = the_data['Rate']
    load = the_data['Load']
    fromStateID = the_data['Origin']
    toCountryID = the_data['Destination']
    moverID = the_data['MoverID']

    # Constructing the query
    query = 'insert into routes (cost, load, fromStateID, toCountryID, moverID) values ("'
    query += str(cost) + '", "'
    query += str(load) + '", "'
    query += str(fromStateID) + '", "'
    query += str(toCountryID) + '", '
    query += str(moverID) + ')'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Success!'