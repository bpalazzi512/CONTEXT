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

companyID = st.session_state['companyID']
companyName = st.session_state['companyName']
userID = st.session_state['userID'] 
routeID = st.session_state['routeID']
countryName = st.session_state['countryName']
fromStateName = st.session_state['stateName']

data = {}


st.title(f"{companyName}")
st.write(f"Welcome our page {st.session_state['name']}, we would love to help you move from **{fromStateName}** to **{countryName}**")
mcData = requests.get(f'http://api:4000/mv/moving_company/{companyID}').json()

if st.button(f"Join Our Mail and Call List"):
      data = {"userID" : userID, 
              "moverID" : companyID, 
              "routeID" : routeID
              }
      try:
        requests.post('http://api:4000/mv/userContact', json=data)
        modal = Modal(key="success", title="Thank you for choosing " + companyName + "!")
      except:
        modal = Modal(key="something went wrong!", title="ERROR!")
      with modal.container():
        st.markdown("Expect to hear from us shortly")


email = mcData[0]['email']
phone = mcData[0]['phone']
bio = mcData[0]['bio']
numStars = mcData[0]['stars']
numReviews = mcData[0]['numReviews']

st.write('## learn more about us below!')
st.write(bio)
st.write('## Hesitant to contact us?')
st.write(f'Phone: {phone}')
st.write(f'email: {email}')
st.write("Stars: "+ ("⭐" * numStars) + "    " +str(numReviews) + " reviews")



