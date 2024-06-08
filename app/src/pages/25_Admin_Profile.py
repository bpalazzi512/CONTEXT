import logging
logger = logging.getLogger()

import pandas as pd
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

data = {}
userID = st.session_state['id']
try:
    data = requests.get(f'http://api:4000/u/admins/{userID}').json()
except:
    st.write("**Important**: Could not connect to sample api, so using dummy data.")
    user_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

df = pd.DataFrame(data)

# init fields with random data
first_name = "John"
last_name = "Doe"
bio = "no bio"
country_id = 1

for index, rows in df.iterrows():
    first_name = rows['firstName']
    last_name = rows['lastName']
    bio = rows['bio']
    country_id = rows['countryID']

# User input fields
first_name = st.text_input("First Name", value=first_name)
last_name = st.text_input("Last Name", value=last_name)
bio = st.text_area("Bio", value=bio)

# Save button
if st.button("Save"):
    # Logic to save the user profile information
    st.success("Profile updated successfully!")
    # For demonstration, we'll just display the entered data
    st.write("First Name:", first_name)
    st.write("Last Name:", last_name)
    st.write("Bio:", bio)


