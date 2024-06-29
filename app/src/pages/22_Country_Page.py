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
import matplotlib.pyplot as plt
# Show appropriate sidebar links for the role of the currently logged in user
st.set_page_config(layout='wide')
SideBarLinks()

countryID = st.session_state['countryID']

country_data = requests.get(f'http://api:4000/c/countries/{countryID}' ).json()

# Country Name
country_name = country_data[0]['name']

st.title(f"Country Page: {country_name}")
st.write(f"Welcome to the country page for {country_name}!")

if st.button('Back', 
             type='primary',
             use_container_width=True):
    if st.session_state['role'] == 'moving_person':
      st.switch_page('pages/00_Moving_Person_Home.py')
    elif st.session_state['role'] == 'moving_admin':
      st.switch_page('pages/20_Admin_Home.py')


#Image
image_url = country_data[0]['img_link']
st.image(image_url, use_column_width=True)
admin_data = requests.get(f'http://api:4000/u/admin_prof/{countryID}').json()

first = admin_data[0]['firstName']
last = admin_data[0]['lastName']
#admin_bio = admin_data[0]['bio']


st.write(f"**This page is managed by {first} {last}**")

if st.button("view admin's profile"):
  st.session_state['adminName'] = f"{first} {last}"
  st.session_state['countryName'] = country_name
  st.session_state['adminID'] = admin_data[0]['id']
  st.switch_page('pages/03_Admin_Page.py')

# Country Bio
st.subheader("Bio")
st.markdown(country_data[0]['bio'])

# Tips and Extra Info
st.subheader("Tips / Extra Info")
st.markdown(country_data[0]['tips'])

st.subheader("Stats")

col1, col2 = st.columns(2)
crime_prediction = requests.get(f'http://api:4000/ml/crime/predict/{country_name}').json()
df = pd.DataFrame(crime_prediction)
with col1:
  formatted_df = df.style.format({"Year": "{:.0f}".format, 'Predicted Number of Crimes (Per 100k People)' : "{:,.0f}".format})
  st.dataframe(formatted_df, column_order=['Year', 'Predicted Number of Crimes (Per 100k People)'], hide_index = True)

  happy = country_data[0]['happinessIndex']
  area = country_data[0]['square_kilos']
  official_languages = country_data[0]['official_lang'] 
  widely_spoken_languages = country_data[0]['widely_spoken_lang']
  population = country_data[0]['pop_density'] * area
  avg_temp = country_data[0]['avg_temp']


  st.write(f"**Area**: {area:,} sq km")
  st.write(f"**Official Language(s)**: {official_languages}")
  st.write(f"**Average Temp (C)**: {avg_temp}")
  st.write(f"**Happiness Index**: {round(happy, 2)} (European Average = 19.61)")
  st.write(f"**Population**: {population:,}")

with col2:
  fig, ax = plt.subplots()
  ax.plot(df['Year'], df['Predicted Number of Crimes (Per 100k People)'], marker='o', linestyle='-')
  ax.set_title('Crime Prediction')
  ax.set_xlabel('Year')
  ax.set_ylabel('Predicted Number of Crimes (Per 100k People)')
  ax.grid(True)
  
  st.pyplot(fig)


user_data = {}

id = st.session_state['id']

try:
   user_data = requests.get(f'http://api:4000/u/users/{id}').json()
except:
  st.write("**Important**: Could not connect to sample api, so using dummy data.")
  user_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

stateID = user_data[0]['homeStateID']
stateName = requests.get(f'http://api:4000/c/state/{stateID}/name').json()[0]['stateName']
countryID = country_data[0]['id']
load = user_data[0]['moveLoad']


mover_data = {}

mover_data = requests.get((f'http://api:4000/r/routes/companies?stateID={stateID}&countryID={countryID}&moveLoad={load}').replace(" ", "+")).json()


# Create a DataFrame
df = pd.DataFrame(mover_data)

# Function to display the table with buttons
def display_movers_with_buttons(df):
  header_cols = st.columns([3, 2, 2, 2, 2])
  header_cols[0].write("**Mover Name**")
  header_cols[1].write("**Cost**")
  header_cols[2].write("**Stars**")
  header_cols[3].write("**Contact**")
  for index, row in df.iterrows():
    cols = st.columns([3, 2, 2, 2, 2])
    cols[0].write(row["moverName"])
    cols[1].write('${:,.0f}'.format(row["cost"]))
    cols[2].write(row["stars"] * "⭐")
    button_ph = cols[3].empty()
    button_viewP = cols[4].empty()
    
    if button_viewP.button('View Page', key=f'view_page{index}'):
      st.session_state['userID'] = id
      st.session_state['routeID'] = row['r.id']
      st.session_state['countryName'] = country_name
      st.session_state['stateName'] = stateName
      st.session_state['companyName'] = row['moverName']
      st.session_state['companyID'] = row['id']

      st.switch_page('pages/01_Moving_Company.py')

  
    if button_ph.button("Contact Mover", key=index):
      data = {"userID" : id, 
              "moverID" : row["id"], 
              "routeID" : row["r.id"]
              }
      try:
        requests.post('http://api:4000/mv/moving/contacts', json=data)
        modal = Modal(key="success", title="The Mover Has been Succesfully Contacted!")
      except:
        modal = Modal(key="something went wrong!", title="ERROR!")
      with modal.container():
         st.markdown("Expect to hear from them shortly")
            
# Mover Data Table
st.markdown(f"### Explore Compatible Moving Companies")
st.markdown(f"#### that operate from {stateName} to {country_name}")
st.write("")

# Display the DataFrame as a custom table with buttons
display_movers_with_buttons(df)
