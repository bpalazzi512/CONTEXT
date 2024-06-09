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
companyName = st.session_state['countryName']
userID = st.session_state['userID'] = id
routeID = st.session_state['routeID']
countryName = st.session_state['stateName']
fromStateName = st.session_state['stateName']


data = {}

if st.button(f"Contact {companyName}"):
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

    # id INT UNIQUE NOT NULL,
    # email VARCHAR(50) NOT NULL,
    # moverName VARCHAR(50) NOT NULL,
    # phone VARCHAR(50) NOT NULL,
    # bio VARCHAR(500),
    # stars int,
    # numReviews int,

st.title(f"{companyName}")
st.write(f"Welcome our page {st.session_state['name']}, we would love to help you move from {fromStateName} to {countryName}")

st.write 