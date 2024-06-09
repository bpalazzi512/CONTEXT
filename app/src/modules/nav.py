# Idea borrowed from https://github.com/fsmosca/sample-streamlit-authenticator

import streamlit as st

#### ------------------------ General ------------------------
def HomeNav():
    st.sidebar.page_link("Home.py", label="Home", icon='🏠')

def AboutPageNav():
    st.sidebar.page_link("pages/30_About.py", label="About", icon="🧠")


#### ------------------------ Examples for Role of moving_person ------------------------
def RankingNav():
    st.sidebar.page_link("pages/00_Moving_Person_Home.py", label="Country Ranking", icon='🏆')

def UserProfile():
    st.sidebar.page_link("pages/24_User_Profile.py", label="Update Profile", icon='👤')


## ------------------------ Examples for Role of moving_company ------------------------
def MoverNav():
    st.sidebar.page_link("pages/31_Moving_Company_Home.py", label="Mover Home", icon='💼')

def MoverPage():
    st.sidebar.page_link("pages/01_Moving_Company.py", label= "View as User", icon='🖥️')


#### ------------------------ Country Admin Role ------------------------
def AdminPageNav():
    st.sidebar.page_link("pages/20_Admin_Home.py", label="Edit Page", icon='🔧')

def AdminProfileNav():
    st.sidebar.page_link("pages/25_Admin_Profile.py", label="Update Profile", icon='👤')

# --------------------------------Links Function -----------------------------------------------
def SideBarLinks(show_home=False):
    """
    This function handles adding links to the sidebar of the app based upon the logged-in user's role, which was put in the streamlit session_state object when logging in. 
    """    

    # add a logo to the sidebar always
    st.sidebar.image("assets/logo.png", width = 150)

    # If there is no logged in user, redirect to the Home (Landing) page
    if 'authenticated' not in st.session_state:
        st.session_state.authenticated = False
        st.switch_page('Home.py')

    # Show the other page navigators depending on the users' role.
    elif st.session_state["authenticated"]:

        # Show World Bank Link and Map Demo Link if the user is a political strategy advisor role.
        if st.session_state['role'] == 'moving_person':
            UserProfile()
            RankingNav()

        # If the user role is usaid worker, show the Api Testing page
        if st.session_state['role'] == 'moving_company':
            MoverNav() 
            MoverPage()
        
        # If the user is an administrator, give them access to the administrator pages
        if st.session_state['role'] == 'country_admin':
            AdminProfileNav()
            AdminPageNav()

    if st.session_state["authenticated"]:
        # Always show a logout button if there is a logged in user
        if st.sidebar.button("Logout"):
            del st.session_state['role']
            del st.session_state['authenticated']
            st.switch_page('Home.py')
    
    # user not selected yet
    else:
        HomeNav()
        AboutPageNav()

