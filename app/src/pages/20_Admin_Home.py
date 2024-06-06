import logging
import requests
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

user_data = {}
adminID = st.session_state['id']

try:
   user_data = requests.get(f'http://api:4000/u/admins/{adminID}').json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  user_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

countryID = user_data[0]['countryID']

country_data = {} 
try:
  country_data = requests.get(f'http://api:4000/c/countries/{countryID}').json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  country_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

country_name = country_data[0]['name']

# Country Name
st.title(f"{country_name} | Admin")

#Image
image_url = country_data[0]['img_link']
st.image(image_url, use_column_width=True)


st.write('## Edit Country Bio:')
bio_txt = country_data[0]['bio']
bio = st.text_area('Country Bio', bio_txt, height=200, placeholder='Start of bio...')

# Save button
if st.button("Save Bio"):
    requests.put('http://api:4000/c/countries/bio/{countryID}/{bio}')
    st.success("Section updated successfully!")

st.write('## Edit Country Extra Info:')
tips_txt = country_data[0]['tips']
tips = st.text_area('Country Extra Info', tips_txt, height=500, placeholder='Start of extra info...')

# Save button
if st.button("Save Tips"):
    requests.put('http://api:4000/c/countries/tips/{countryID}/{tips}')
    st.success("Section updated successfully!")


