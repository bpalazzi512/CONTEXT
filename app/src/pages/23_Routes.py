import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

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

col1, col2= st.columns(2)



moveLoad_txt = df["moveLoad"][0]
st.write(moveLoad_txt)

edit_buttons = {}
del_buttons = {}
# Function to display the routes
def display_routes(df):
    header_cols = st.columns([3, 4, 4, 2, 2, 2])
    header_cols[0].write("**Origin**")
    header_cols[1].write("**Destination**")
    header_cols[2].write("**Load**")
    header_cols[3].write("**Rate**")

    for index, row in df.iterrows():
        cols = st.columns([3, 4, 4, 2, 2, 2])

        moveLoad_txt = df["moveLoad"][index]
        cost_txt = df['cost'][index]
        # with col0:
        #     st.write(cols[0].write(row["stateName"]))
        # with col1:
        #     st.write(cols[1].write(row["name"]))
        with col1:
            col2, col3 = st.columns(2)
            st.write(row["stateName"])
            st.write(row["name"])
        with col2:
            cols[2] = st.text_input('', moveLoad_txt,  placeholder='moveLoad',
                                key =f"moveL_{index}")
        with col3:
            cols[3] = st.text_input('', cost_txt, placeholder='cost', 
                               key =f"cost_{index}")
        #cols[2].write(row["moveLoad"])
        #cols[3].write('$' + str(row["cost"]))
        edit_buttons[index] = cols[4].button('Update', key = f"edit_{index}")
        
        del_buttons[index] = cols[5].button('Delete', key = f"del_{index}")
        route_id = df['id'][index]
    #for index, delete in del_buttons.items():
        if del_buttons[index]:
            response = requests.delete(f'http://api:4000/r/del_routes/{route_id}')
            if response.status_code == 200:
                st.success(f"Deleted route {route_id}")
            else:
                st.error(f"Failed delete route {route_id}")

        if edit_buttons[index]:
            data = {"moveLoad" : cols[2], # moveLoad input
                    "cost" : cols[3], # cost input
                    "id" : str(route_id)} # routeID 
            response = requests.put(f'http://api:4000/r/routes_edit', json = data)
            if response.status_code == 200:
                st.success(f"edited {route_id}")
            else:
                st.error(f"Failed to edit {route_id}")
                
# if st.button("Save Bio"):
#     data = {"countryID" : countryID, "bio" : bio}
#     requests.put('http://api:4000/c/country/bio', json=data)
#     st.success("Section updated successfully!")

#     fromStateID int NOT NULL,
#     toCountryID int NOT NULL,
#     moverID int NOT NULL,
#     moveLoad ENUM('Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only') NOT NULL,
#     cost int,
#     id int NOT NULL,

# Page Title
st.title(f"Routes for {st.session_state['name']}")
display_routes(df)



userID = st.session_state['id']

def del_route():
    return 1
def add_route():
    with st.form(key='new_route_form'):
        # make origin selectbox with all 50 states listed alphabetically  
        origin = st.selectbox('Origin', ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 
                                         'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 
                                         'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 
                                         'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 
                                         'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 
                                         'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 
                                         'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 
                                         'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 
                                         'Wisconsin', 'Wyoming'])
        
        # all EU countries alphabetically
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
                "MoverID" : st.session_state['id'],
                "Origin": [origin],
                "Destination": [destination],
                "Load": [load],
                "Rate": [rate]
            }
            st.write("hello")
            try: 
                response = requests.post("http://api:4000/r/add_route", json=new_data)
            except:
                st.write("Did not add!")
            if response.status_code == 201 or response.status_code == 200:
                st.success("Post submitted successfully!")
            else:
                st.error("Failed to submit post. Please try again.")
            new_df = pd.DataFrame(new_data)
            global df
            df = pd.concat([df, new_df], ignore_index=True)
            st.success("New route added successfully!")


# Button to add a new route
if st.button('Add New Route / Update Existing'):
    add_route()

if st.button('Delete Route'):
    del_route()
