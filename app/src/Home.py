import logging
logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

st.session_state['authenticated'] = False
SideBarLinks(show_home=True)

st.title('CONTEXT')

st.write('\n\n')
st.write('### HI! As which user would you like to log in?')

if st.button("Act a Person Thinking About Moving Abroad", 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'moving_person'
    st.session_state['name'] = 'John'
    st.session_state['id'] = 15
    st.switch_page('pages/00_Moving_Person_Home.py')

if st.button('Act as a Moving Company', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'moving_company'
    st.session_state['name'] = 'Fontemoves'
    st.session_state['id'] = 2
    st.switch_page('pages/31_Moving_Company_Home.py')

if st.button('Act as a Country Administrator', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'country_admin'
    st.session_state['name'] = 'Belgium'
    st.session_state['id'] = 3
    st.switch_page('pages/20_Admin_Home.py')



