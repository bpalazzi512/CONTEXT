import logging
logger = logging.getLogger()

import pandas as pd
import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# User input fields
first_name = st.text_input("First Name", value="John")
last_name = st.text_input("Last Name", value="Smith")
email = st.text_input("Email", "jsmith@gmail.com")
phone_number = st.text_input("Phone Number", value="123-456-7890")
age = st.number_input("Age", min_value=0, max_value=120, step=1, value=43)
home_state = st.selectbox("Home State", ["", "Alabama", "Alaska", "Arizona", "Arkansas", "California", 
                                         "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", 
                                         "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", 
                                         "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", 
                                         "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
                                         "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
                                         "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
                                         "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
                                         "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", 
                                         "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"], index=5)

# Save button
if st.button("Save"):
    # Logic to save the user profile information
    st.success("Profile updated successfully!")
    # For demonstration, we'll just display the entered data
    st.write("First Name:", first_name)
    st.write("Last Name:", last_name)
    st.write("Email:", email)
    st.write("Phone Number:", phone_number)
    st.write("Age:", age)
    st.write("Home State:", home_state)


