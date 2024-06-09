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

comapnyID = st.session_state['id']
mcData = requests.get(f'http://api:4000/mv/moving_company/{comapnyID}').json()

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
#cost = cols[3].text_input('cost', '$' + str(row['cost']), key=f"cost_{index}")
st.text_input('Company Name', companyName)
st.text_input('Email', email)
st.text_input('phone', phone)
st.text_area('bio', bio)

st.write("Stars: "+ ("⭐" * numStars) + "   " +str(numReviews) + " reviews")

if st.button('Save'):
  
  st.success("Profile saved successfully!")



        # if edit_buttons[index]:
        #     data = {"moveLoad": load, "cost": cost_number, "id": str(route_id)}
            
        #     response = requests.put(f'http://api:4000/r/routes_edit', json=data)
        #     if response.status_code == 200:
                
        #         st.success(f"Edited route number: {route_id}")
                
        #         time.sleep(1)  # Add a 1-second delay
        #         st.experimental_rerun()
        #     else:
        #         st.error(f"Please change something or ensure cost is a number")





