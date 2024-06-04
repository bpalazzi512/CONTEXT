import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# Sample data for customers
data = {
    "Origin": ["Texas"],
    "Destination": ["Austria"],
    "Load" : ["Full"],
    "Rate" : ["$3,000"]
}

# Create a DataFrame
df = pd.DataFrame(data)

# Page Title
st.title(f"Routes for {st.session_state['name']}")

# Display the DataFrame as a table
st.table(df)


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
                "Origin": [origin],
                "Destination": [destination],
                "Load": [load],
                "Rate": [rate]
            }
            new_df = pd.DataFrame(new_data)
            global df
            df = pd.concat([df, new_df], ignore_index=True)
            st.success("New route added successfully!")

# Button to add a new route
if st.button('Add New Route / Update Existing'):
    add_route()
