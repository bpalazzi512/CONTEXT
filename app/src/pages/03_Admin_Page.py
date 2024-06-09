import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
from modules.nav import SideBarLinks
from streamlit_modal import Modal
import requests
import json
# Show appropriate sidebar links for the role of the currently logged in user
st.set_page_config(layout='wide')
SideBarLinks()

data = {}
adminName = st.session_state['adminName']
countryName = st.session_state['countryName']
adminID = st.session_state['adminID']

data = requests.get(f'http://api:4000/u/admins/{adminID}').json()
#country = requests.get(f'http://api:4000/c/get_countryName/{countryID}').json()

bio = data[0]['bio']

st.image('https://i1.rgstatic.net/ii/profile.image/278414339657728-1443390559016_Q512/Mark-Fontenot.jpg', width =100)

st.title(adminName + ": Country Admin for " + countryName)
st.write("hi! this is my profile and personal blog! I post more updates here!")

st.write('### A little about me:')

st.write(bio)