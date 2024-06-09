import streamlit as st
from streamlit_extras.app_logo import add_logo
from modules.nav import SideBarLinks

SideBarLinks()

st.write("# About this App")

st.markdown (
    """

    Welcome to Explore Your Future Home, a comprehensive platform designed to help retirees 
    and expatriates find their ideal country to move to. This project aims to provide valuable 
    insights into various countries, considering multiple factors such as happiness index, crime safety, 
    leisure activities, cost of living, and more. Whether you’re planning your retirement abroad or simply 
    exploring new possibilities, our platform equips you with the necessary information to make an informed decision.
    
    This app is being built as an exemplar for Northeastern University's 
    Summer 2024 Dialogue of Civilization Program titled *Data and 
    Software in International Government and Politics*.  The program is bein
    led by Dr. Mark Fontenot and Dr. Eric Gerber from the Khoury College of
    Computer Sciences.  
    """
        )
