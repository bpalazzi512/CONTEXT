import logging
logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks
import requests
import pandas as pd

st.set_page_config(layout = 'wide')

st.session_state['authenticated'] = False
SideBarLinks(show_home=True)

st.title('CONTEXT')

#st.write('\n')
st.write('### HI! Log in as one of the following:')
st.write("")

col1, col2, col3 = st.columns(3)
col4, col5, col6 = st.columns(3)
#cols = st.columns([2, , 3])
user_url = 'https://thumbs.dreamstime.com/z/portrait-young-handsome-happy-man-wearing-glasses-casual-smart-blue-clothing-yellow-color-background-square-composition-200740125.jpg'
mover_url = 'https://i.pinimg.com/474x/97/a6/d8/97a6d89e9adc9123031ddbd64ed35d72.jpg'
admin_url = 'https://cdn-icons-png.freepik.com/512/295/295608.png'


with col1:
    col4, col5, col6 = st.columns(3)
    with col5:
      st.image(user_url, width = 100, output_format='centered')
      st.image(mover_url, width = 100)
      st.image(admin_url, width = 100)


with col2:
   st.write("**Klement Gorring** is a 62 year old person who just retired and is **thinking about moving abroad!**")
   st.write("")
   st.write("")
   st.write("**Thoughtstorms** is a **moving company** that helps indivudals move from the states to the EU")
   st.write("")
   st.write("")
   st.write("**Bell Stoner** is a passionate **country admin** for Portugal and gives tips frequently")
with col3: 
  st.write("")
  if st.button("Sign in as Klement Gorring", 
            type = 'primary', ):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'moving_person'
    st.session_state['id'] = 15
    
    id = st.session_state['id']
    st.session_state['name'] = 'Dummy Name'

    # make session state user name
    try:
        st.session_state['name'] = requests.get(f'http://api:4000/u/users/{id}').json()[0]['firstName'] + ' ' + requests.get(f'http://api:4000/u/users/{id}').json()[0]['lastName']
    except:
        st.write("**Important**: Could not connect to sample api, so using dummy data.")
        pass

    st.switch_page('pages/00_Moving_Person_Home.py')

  st.write("")
  st.write("")
  st.write("")
  st.write("")
  if st.button('Sign in as Thoughtstorms', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'moving_company'
    st.session_state['id'] = 2

    id = st.session_state['id']
    st.session_state['name'] = 'Dummy Name'

    #for view page session_states:
    st.session_state['companyID'] = 2
    st.session_state['companyName'] = 'Thoughtstorm'
    st.session_state['countryName'] = '(COUNTRY)'
    st.session_state['userID'] = 1
    st.session_state['routeID'] = 1
    st.session_state['stateName'] = '(STATE)'

    # make session state user name
    try:
        st.session_state['name'] = requests.get(f'http://api:4000/mv/moving_company/{id}').json()[0]['moverName']
    except:
        st.write("**Important**: Could not connect to sample api, so using dummy data.")
        pass

    st.switch_page('pages/31_Moving_Company_Home.py')

  st.write("")
  st.write("")
  st.write("")
  if st.button('Sign in as Bell Stoner', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'country_admin'
    st.session_state['id'] = 3

    id = st.session_state['id']
    st.session_state['name'] = 'Dummy Name'

    # make session state user name
    try:
        st.session_state['name'] = requests.get(f'http://api:4000/u/admins/{id}').json()[0]['firstName'] + ' ' + requests.get(f'http://api:4000/u/admins/{id}').json()[0]['lastName']
        st.session_state['countryID'] = requests.get(f'http://api:4000/u/admins/{id}').json()[0]['countryID']
    except:
        st.write("**Important**: Could not connect to sample api, so using dummy data.")
        pass


    st.switch_page('pages/20_Admin_Home.py')



