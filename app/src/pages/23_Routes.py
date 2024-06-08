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

# # init fields with random data
# email = "test@gmail.com"
# age = 25
# phone = "123-456-7890"
# first_name = "John"
# last_name = "Doe"
# home_state = "California"
# move_load = "Full Household"

# for index, rows in df.iterrows():
#     email = rows['email']
#     age = rows['age']
#     phone = rows['phone']
#     first_name = rows['firstName']
#     last_name = rows['lastName']
#     home_state = rows['homeStateID']
#     move_load = rows['moveLoad']



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
        elif load == 'Part HouseHold':
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
        cols[0].markdown(row['stateName'])
        cols[1].markdown(row['name'])
        load = cols[2].selectbox('load',['Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only'], index = loadIndex, key=f"moveL_{index}")
        cost = cols[3].text_input('cost', '$' + str(row['cost']), key=f"cost_{index}")
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
            else:
                st.error(f"Failed delete route {route_id}")

        if edit_buttons[index]:
            data = {"moveLoad": load, "cost": cost, "id": str(route_id)}
            
            response = requests.put(f'http://api:4000/r/routes_edit', json=data)
            if response.status_code == 200:
                st.success(f"Edited {route_id}")
            else:
                st.error(f"Please change something or ensure cost is a number")

# Page Title
st.title(f"Routes for {st.session_state['name']}")
display_routes(df)

userID = st.session_state['id']
origin = 1
destination = 1
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
        rate = st.text_input('Rate', '$')
        rate_value = rate.replace("$", "")
 
        submit_button = st.button(label='Add Route')
        try:
            country_id = requests.get(f'http://api:4000/c/get_countryID/{origin}').json()
        except:
            st.write('error')
        
        try:
            state_id = requests.get(f'http://api:4000/c/get_stateID/{destination}').json()
        except:
            st.write('error')
        st.write(origin)
        st.write(str(country_id))
        st.write(country_id[0])


        new_data = {
                "MoverID": st.session_state['id'],
                "Origin": state_id[0]['id'],
                "Destination": country_id[0]['id'],
                #"Origin": origin,
                #"Destination": destination,
                "Load": load,
                "Rate": rate_value
        }

        
        st.write(new_data)

        if submit_button:
            

            st.write(new_data)
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

add_route()
