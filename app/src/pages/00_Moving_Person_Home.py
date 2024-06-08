import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks
from ml_models.cos_model import CosineSimilarityModel as csm

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

st.title(f"Welcome back {st.session_state['name']}")
st.write('')
st.write('')
st.write('### Explore suitable countries based on your preferences')
userID = st.session_state['id']

col1, col2 = st.columns(2)

# load user slider data 
slider_data = {}
try:
    slider_data = requests.get(f'http://api:4000/ml/sliders/{userID}').json()
except:
    st.write("**Important**: Could not connect to sample api, so using dummy data.")
    slider_data = {"weather": 50, "transport": 50, "education": 50, "safety": 50, "pop_density": 50, "healthcare": 50, "leisure": 50, "COL": 50}

# get values from the slider data
weather_val = int(slider_data[0]['weather'])
transport_val = int(slider_data[0]['transport'])
education_val =  int(slider_data[0]['education'])
safety_val = int(slider_data[0]['safety'])
pop_density_val = int(slider_data[0]['pop_density'])
healthcare_val = int(slider_data[0]['healthcare'])
leisure_val = int(slider_data[0]['leisure'])
COL_val = int(slider_data[0]['COL'])

with col1:
    st.header("How much do you care about the following categories?")
    col3, col4 = st.columns(2)
    with col3:
        # Create sliders
        warm_weather = st.slider("Robust Public Tranport", 0, 100, weather_val)
        robust_public_transport = st.slider("Safety", 0, 100, transport_val)
        good_public_education = st.slider("Good public education", 0, 100, education_val)
        safety = st.slider("Comprehension of Your Language", 0, 100, safety_val)

    with col4:
        pop_density = st.slider("Population Density", 0, 100, pop_density_val)
        healthcare = st.slider("Good Public Healthcare", 0, 100, healthcare_val)
        leisure = st.slider("Lots of Activites", 0, 100, leisure_val)
        cost_of_living = st.slider("Cost of Living", 0, 100, COL_val)

    # Save and Generate Ranking
    # Save button
    if st.button("Save and Generate Ranking"):
        data = {"weather": warm_weather, "transport": robust_public_transport, "education": good_public_education, "safety": safety, "pop_density": pop_density, "healthcare": healthcare, "leisure": leisure, "COL": cost_of_living, "userID": userID}
        requests.put('http://api:4000/ml/sliders', json=data)
        ranking_dict = csm.find_closest_country(userID)

        # for loop which inserts each number and country id into the database
        for i in range(1, len(ranking_dict)+1):
            # get country id from country name
            rankingNum = i
            countryName = ranking_dict[str(i)]
            countryID = requests.get(f'http://api:4000/c/getCountryID/{countryName}').json()[0]['id']
            userID = st.session_state['id']

            data = {"rankingNum": rankingNum, "countryID": countryID, "userID": userID}
            requests.put('http://api:4000/u/rankings', json=data)

        st.success("Section updated successfully!")


with col2:
    with st.container(border=True, height=600):
        st.header("Country Ranking")

        # Fallback data for country ranking
        data = {
            "name": ["Belgium", "Italy", "Hungary", "Greece", "France", "Spain", "Austria", "Netherlands", "Latvia", "Sweeden", 'Denmark'],
            "bio": ["Start of bio...", "...", "...", "...", "...", "...", "...", "...", "...", "...", "..."],
        }

        try:
            # Get country ranking data
            data = requests.get(f'http://api:4000/u/users/{userID}/rankings').json()
        except:
            st.write("**Important**: Could not connect to sample api, so using dummy data.")

        df = pd.DataFrame(data)

        # Display ranking
        for index, row in df.iterrows():
            country_name = row['countryName']
            country_bio = row['bio']
            with st.expander(f"#{index+1} - {country_name}"):
                st.write(country_bio)
                if st.button(f'View Page for {country_name}', 
                type='primary',
                use_container_width=True):
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