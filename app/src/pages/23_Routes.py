import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks
import time  # Import the time module

st.set_page_config(layout='wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# Sample data for customers
data = {}
moverID = st.session_state['id']
try:
    data = requests.get(f'http://api:4000/r/all_routes/{moverID}').json()
except:
    st.write("error!")

df = pd.DataFrame(data)





# Function to display the routes
def display_routes(df):
    header_cols = st.columns([3, 4, 4, 2, 2, 2])
    header_cols[0].write("**Origin**")
    header_cols[1].write("**Destination**")
    header_cols[2].write("**Load**")
    header_cols[3].write("**Rate**")
    header_cols[4].write("**Edit**")
    header_cols[5].write("**Delete**")

    edit_buttons = {}
    del_buttons = {}



    for index, row in df.iterrows():
        cols = st.columns([3, 4, 4, 2, 2, 2])
        load = row['moveLoad']
        if load == 'Full Household':
            loadIndex = 0
        elif load == 'Part Household':
            loadIndex = 1
        elif load == 'Personal Effects Only':
            loadIndex = 2
        elif load == 'Excess Baggage':
            loadIndex = 3
        else:
            loadIndex = 4
        cols[0].markdown("")
        cols[0].markdown("")
        cols[1].markdown("")
        cols[1].markdown("")
        stateName = row['stateName']
        countryName = row['name']
        cols[0].markdown(f"**{stateName}**")
        cols[1].markdown(f"**{countryName}**")
        load = cols[2].selectbox('load',['Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only'], index = loadIndex, key=f"moveL_{index}")
        cost = cols[3].number_input('cost($)', value=row['cost'], key=f"cost_{index}")

        #cost_number = cost.replace("$", "")
        #cost_number = cost.replace(",", "")
 
        cols[4].markdown("")
        cols[4].markdown("")
        cols[5].markdown("")
        cols[5].markdown("")
        edit_buttons[index] = cols[4].button('Update', key=f"edit_{index}")
        del_buttons[index] = cols[5].button('Delete', key=f"del_{index}")
        route_id = df['id'][index]

        if del_buttons[index]:
            response = requests.delete(f'http://api:4000/r/del_routes/{route_id}')
            if response.status_code == 200:
                st.success(f"Deleted route {route_id}")
                time.sleep(1)  # Add a 1-second delay
                st.rerun()
            else:
                st.error(f"Failed delete route {route_id}")

        if edit_buttons[index]:
            data = {"moveLoad": load, "cost": cost, "id": str(route_id)}
            
            response = requests.put(f'http://api:4000/r/routes_edit', json=data)
            if response.status_code == 200:
                
                st.success(f"Edited route number: {route_id}")
                
                time.sleep(1)  # Add a 1-second delay
                st.rerun()
            else:
                st.error(f"Please change something or ensure cost is a number")



userID = st.session_state['id']
origin = 'Utah'
destination = 'Austria'
state_id = {}
country_id = {}
def add_route():
    #with st.form(key='new_route_form'):
        origin = st.selectbox('Origin', ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 
                                         'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 
                                         'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 
                                         'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 
                                         'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 
                                         'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 
                                         'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 
                                         'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 
                                         'Wisconsin', 'Wyoming'], placeholder = "choose")

        destination = st.selectbox('Destination', ['Austria', 'Belgium', 'Bulgaria', 'Croatia', 'Cyprus', 'Czech Republic',
                                                   'Denmark', 'Estonia', 'Finland', 'France', 'Germany', 'Greece', 'Hungary',
                                                   'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Netherlands',
                                                   'Poland', 'Portugal', 'Romania', 'Slovakia', 'Slovenia', 'Spain', 'Sweden'], placeholder = "")
        load = st.selectbox('Load', ['Full Household', 'Part Household', 
                                     'Personal Effects Only', 'Excess Baggage', 'Vehicle Only'], placeholder = "choose")
        rate = st.number_input('Rate($)', value=0, key="rate")
        
 
        submit_button = st.button(label='Add Route')
        try:
            country_id = requests.get(f'http://api:4000/c/country/{destination}/id').json()
        except:
            st.write('error')
        
        try:
            state_id = requests.get(f'http://api:4000/c/state/{origin}/id').json()
        except:
            st.write('error')
        
        route_id = requests.get('http://api:4000/r/get_max_id').json()
        #/get_count/<stateID>/<countryID>/<moverID>/<moveLoad>'

        
        #st.write(new_data)

        if submit_button:
            new_data = {
                "id": str(1 + route_id[0]['max_id']),
                "MoverID": str(st.session_state['id']),
                "Origin": str(state_id[0]['id']),
                "Destination": str(country_id[0]['id']),
                "Load": load,
                "Rate": int(rate)
            }
            stateID =str(state_id[0]['id'])
            countryID =str(country_id[0]['id'])
            moveID = str(st.session_state['id'])
            #string 
            count_repeates = requests.get(f'http://api:4000/r/get_count/{stateID}/{countryID}/{moveID}/{load}').json()

            if count_repeates[0]['count'] > 0:
                st.error("Route already exists!")
            else:

                try: 
                    response = requests.post("http://api:4000/r/add_route", json=new_data)
                    if response.status_code == 201 or response.status_code == 200:
                        st.success("Route added successfully!")
                        new_df = pd.DataFrame([new_data])
                        global df
                        df = pd.DataFrame(requests.get(f'http://api:4000/r/all_routes/{moverID}').json())
                    else:
                        st.error("Failed to add route. Please try again.")
                except:
                    st.write("Did not add!")
                
                


# Page Title
st.title(f"Routes for {st.session_state['name']}")
st.write('## See, Edit, and Delete existing routes:')
add_route()
st.write("")
st.write("## Existing Routes:")
st.write("")
display_routes(df)

