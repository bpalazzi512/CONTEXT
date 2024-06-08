import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks

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
        cols[0].write(row["stateName"])
        cols[1].write(row["name"])
        cols[2].selectbox('', ['Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only'], index=0, key=f"moveL_{index}")
        cols[3].text_input('', row['cost'], key=f"cost_{index}")
        edit_buttons[index] = cols[4].button('Update', key=f"edit_{index}")
        del_buttons[index] = cols[5].button('Delete', key=f"del_{index}")
        route_id = df['id'][index]

        if del_buttons[index]:
            response = requests.delete(f'http://api:4000/r/del_routes/{route_id}')
            if response.status_code == 200:
                st.success(f"Deleted route {route_id}")
            else:
                st.error(f"Failed delete route {route_id}")

        if edit_buttons[index]:
            data = {"moveLoad": cols[2].value, "cost": cols[3].value, "id": str(route_id)}
            response = requests.put(f'http://api:4000/r/routes_edit', json=data)
            if response.status_code == 200:
                st.success(f"Edited {route_id}")
            else:
                st.error(f"Failed to edit {route_id}")

# Page Title
st.title(f"Routes for {st.session_state['name']}")
display_routes(df)

userID = st.session_state['id']

def add_route():
    with st.form(key='new_route_form'):
        origin = st.selectbox('Origin', ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 
                                         'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 
                                         'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 
                                         'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 
                                         'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 
                                         'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 
                                         'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 
                                         'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 
                                         'Wisconsin', 'Wyoming'])
        
        destination = st.selectbox('Destination', ['Austria', 'Belgium', 'Bulgaria', 'Croatia', 'Cyprus', 'Czech Republic',
                                                   'Denmark', 'Estonia', 'Finland', 'France', 'Germany', 'Greece', 'Hungary',
                                                   'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Netherlands',
                                                   'Poland', 'Portugal', 'Romania', 'Slovakia', 'Slovenia', 'Spain', 'Sweden'])
        load = st.selectbox('Load', ['Full Household', 'Part Household', 
                                     'Personal Effects Only', 'Excess Baggage', 'Vehicle Only'])
        rate = st.text_input('Rate')
        submit_button = st.form_submit_button(label='Add Route')

        if submit_button:
            new_data = {
                "MoverID": st.session_state['id'],
                "Origin": origin,
                "Destination": destination,
                "Load": load,
                "Rate": rate
            }
            try: 
                response = requests.post("http://api:4000/r/add_route", json=new_data)
            except:
                st.write("Did not add!")
            if response.status_code == 201 or response.status_code == 200:
                st.success("Route added successfully!")
                new_df = pd.DataFrame([new_data])
                global df
                df = pd.concat([df, new_df], ignore_index=True)
                st.success("New route added successfully!")
            else:
                st.error("Failed to add route. Please try again.")

# Button to add a new route
if st.button('Add New Route'):
    add_route()
