import logging
import requests
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title(f"Welcome back {st.session_state['name']} Admin")

st.write('## Edit Country Bio:')

bio = st.text_area('Country Bio', 'Grab from database', height=200, placeholder='Start of bio...')

st.write('## Edit Country Extra Info:')
tips = st.text_area('Country Extra Info', 'Grab from database', height=500, placeholder='Start of extra info...')


