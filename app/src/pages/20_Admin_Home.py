import logging
import requests
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

# Country Name
st.title("The Netherlands | Admin")

#Image
image_url = 'https://i.natgeofe.com/k/4a509698-ab53-4581-af61-4c4808a81a76/netherlands-tulip-fields_16x9.jpg?w=1200'
st.image(image_url, caption="A windmill in a tulip field", use_column_width=True)


st.write('## Edit Country Bio:')

bio = st.text_area('Country Bio', 'Grab from database', height=200, placeholder='Start of bio...')

# Save button
if st.button("Save Bio"):
    st.success("Section updated successfully!")
    # push to database

st.write('## Edit Country Extra Info:')
tips = st.text_area('Country Extra Info', 'Grab from database', height=500, placeholder='Start of extra info...')

# Save button
if st.button("Save Tips"):
    st.success("Section updated successfully!")
    # push to database


