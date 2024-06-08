import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
from modules.nav import SideBarLinks
from streamlit_modal import Modal
import requests
import json
from datetime import datetime
import time
# Show appropriate sidebar links for the role of the currently logged in user
st.set_page_config(layout='wide')
SideBarLinks()

countryID = st.session_state['countryID']

country_data = {} 
try:
  country_data = requests.get(f'http://api:4000/c/countries/{countryID}' ).json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  country_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

# Country Name
country_name = country_data[0]['name']

st.title(f"Country Page: {country_name}")
st.write(f"Welcome to the country page for {country_name}!")

if st.button('Back', 
             type='primary',
             use_container_width=True):
    st.switch_page('pages/00_Moving_Person_Home.py')


#Image
image_url = country_data[0]['img_link']
st.image(image_url, use_column_width=True)

# Country Bio
st.subheader("Bio")
st.markdown(country_data[0]['bio'])

# Tips and Extra Info
st.subheader("Tips / Extra Info")
st.markdown(country_data[0]['tips'])

st.subheader("Stats")
try:
  crime_prediction = requests.get(f'http://api:4000/ml/crime/predict/{country_name}').json()
  df = pd.DataFrame(crime_prediction)
  formatted_df = df.style.format({"Year": "{:.0f}".format, 'Predicted Number of Crimes (Per 100k People)' : "{:,.0f}".format})
  st.dataframe(formatted_df, column_order=['Year', 'Predicted Number of Crimes (Per 100k People)'], hide_index = True)


except:
  st.write("Could not load crime predictions at this time")

# Mover Data Table
st.markdown("## Explore Compatible Movers to this Destination")

user_data = {}

id = st.session_state['id']

try:
   user_data = requests.get(f'http://api:4000/u/users/{id}').json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  user_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

stateID = user_data[0]['homeStateID']
countryID = country_data[0]['id']

mover_data = {}

try:
   mover_data = requests.get(f'http://api:4000/mv/moving_company/{stateID}/{countryID}').json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  mover_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

# mover_data = {
#     "Mover Name": ["Fontemoves", "Speedy Movers", "Global Transport"],
#     "Quote": ["$3000", "$3200", "$3100"],
#     "Stars": ["⭐⭐⭐⭐", "⭐⭐⭐", "⭐⭐⭐⭐⭐"]
# }

# Create a DataFrame
df = pd.DataFrame(mover_data)

# Function to display the table with buttons
def display_movers_with_buttons(df):
  header_cols = st.columns([3, 2, 1, 2])
  header_cols[0].write("**Mover Name**")
  header_cols[1].write("**Cost**")
  header_cols[2].write("**Stars**")
  header_cols[3].write("**Contact**")
  for index, row in df.iterrows():
    cols = st.columns([3, 2, 1, 2])
    cols[0].write(row["moverName"])
    cols[1].write('$' + str(row["cost"]))
    cols[2].write(row["stars"] * "⭐")
    button_ph = cols[3].empty()
  
    if button_ph.button("Contact Mover", key=index):
      data = {"userID" : st.session_state['id'], 
              "moverID" : row["id"], 
              "routeID" : row["r.id"]
              }
      try:
        requests.post('http://api:4000/mv/userContact', json=data)
        modal = Modal(key="success", title="The Mover Has been Succesfully Contacted!")
      except:
        modal = Modal(key="something went wrong!", title="ERROR!")
      with modal.container():
        st.markdown("Expect to hear from them shortly")
            


# Display the DataFrame as a custom table with buttons
display_movers_with_buttons(df)
