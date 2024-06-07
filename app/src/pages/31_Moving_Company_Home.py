import logging
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

st.title(f"Welcome back {st.session_state['name']} Admin")
st.write('')
st.write('')
st.write('### What would you like to do today?')

if st.button('View Interested Customers', 
             type='primary',
             use_container_width=True):
  #st.session_state['moverID'] = st.session_state['id'] #does st.session_state change page to page? or is this useless? -BL
  st.switch_page('pages/21_Customers.py')

if st.button('Edit Moving Routes', 
             type='primary',
             use_container_width=True):
  #st.session_state['moverID'] = st.session_state['id']
  st.switch_page('pages/23_Routes.py')