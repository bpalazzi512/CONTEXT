import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

st.title(f"Welcome back {st.session_state['name']}")
st.write('')
st.write('')
st.write('### Explore suitable countries based on your preferences')

col1, col2 = st.columns(2)

with col1:
    st.header("How much do you care about the following categories?")
    col3, col4 = st.columns(2)
    with col3:
        # Create sliders
        warm_weather = st.slider("Robust Public Tranport", 0, 100, 50)
        robust_public_transport = st.slider("Safety", 0, 100, 50)
        good_public_education = st.slider("Good public education", 0, 100, 50)
        safety = st.slider("Comprehension of Your Language", 0, 100, 50)

    with col4:
        pop_density = st.slider("Population Density", 0, 100, 50)
        healthcare = st.slider("Good Public Healthcare", 0, 100, 50)
        leisure = st.slider("Lots of Activites", 0, 100, 50)
        cost_of_living = st.slider("Cost of Living", 0, 100, 50)


with col2:
    with st.container(border=True, height=600):
        st.header("Country Ranking")

        # Fallback data for country ranking
        data = {
            "Country": ["Belgium", "Italy", "Hungary", "Greece", "France", "Spain", "Austria", "Netherlands", "Latvia", "Sweeden", 'Denmark'],
            "Bio": ["Start of bio...", "...", "...", "...", "...", "...", "...", "...", "...", "...", "..."],
        }

        try:
            # Get country ranking data
            data = requests.get('http://api:4000/c/countries').json()


        df = pd.DataFrame(data)

        # Display ranking
        for index, row in df.iterrows():
            with st.expander(f"#{index+1} - {row['Country']}"):
                st.write(row['Bio'])
                if st.button(f'View Full Country Page {index + 1}', 
                type='primary',
                use_container_width=True):
                    country_name = row['Country']
                    st.write(country_name)
                    try:
                        data = {} 
                        data = requests.get('http://api:4000/c/country/' + country_name).json() #get countryid
                        st.session_state['countryID'] = data[0]['id'] 
                        st.switch_page('pages/22_Country_Page.py')
                    except Exception as e:
                        st.write(f"An error occurred: {e}")

# Interactive Map
st.header("Interactive Map")

# Create a sample map
df_map = pd.DataFrame({
    'lat': [52.3676, 48.8566, 51.5074, 40.7128, 35.6895],
    'lon': [4.9041, 2.3522, -0.1276, -74.0060, 139.6917],
    'name': ['Amsterdam', 'Paris', 'London', 'New York', 'Tokyo']
})

fig = px.scatter_geo(df_map, lat='lat', lon='lon', text='name', scope='world')
st.plotly_chart(fig, use_container_width=True)