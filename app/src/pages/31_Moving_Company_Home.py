import logging
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

st.title(f"Welcome back {st.session_state['name']} Admin")
st.write('Thank you for choosing to work with CONTEXT!')
st.write('')

companyID = st.session_state['id']
mcData = requests.get(f'http://api:4000/mv/moving_company/{companyID}').json()

#companyID = mcData[0]['id']
companyName = mcData[0]['moverName']
email = mcData[0]['email']
phone = mcData[0]['phone']
bio = mcData[0]['bio']
numStars = mcData[0]['stars']
numReviews = mcData[0]['numReviews']


col1, col2 = st.columns(2)

with col1:
  if st.button('View Interested Customers', 
              type='primary',
              use_container_width=True):
    #st.session_state['moverID'] = st.session_state['id'] #does st.session_state change page to page? or is this useless? -BL
    st.switch_page('pages/21_Customers.py')

with col2:
  if st.button('Edit Moving Routes', 
              type='primary',
              use_container_width=True):
    #st.session_state['moverID'] = st.session_state['id']
    st.switch_page('pages/23_Routes.py')

st.write('### Company Profile')

companyName_input = st.text_input('Company Name', companyName)
email_input = st.text_input('Email', email)
phone_input = st.text_input('phone', phone)
bio_input = st.text_area('bio', bio)

st.write("Stars: "+ ("⭐" * numStars) + "   " +str(numReviews) + " reviews")

if st.button('Save'):
  data = {"moverID": str(companyID),
          "email" : email_input,
          "phone" : phone_input,
          "bio" : bio_input,
          "moverName" : companyName_input}
  response = requests.put('http://api:4000/mv/mc_edit', json=data)
  if response.status_code == 200:
    st.success("Profile saved successfully!")








