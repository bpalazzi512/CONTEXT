import logging
logger = logging.getLogger()

import pandas as pd
import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

# User input fields
first_name = st.text_input("First Name", value="Paul")
last_name = st.text_input("Last Name", value="Doe")
bio = st.text_area("Bio", "Hi! I love the Netherlands!")

# Save button
if st.button("Save"):
    # Logic to save the user profile information
    st.success("Profile updated successfully!")
    # For demonstration, we'll just display the entered data
    st.write("First Name:", first_name)
    st.write("Last Name:", last_name)
    st.write("Bio:", bio)


