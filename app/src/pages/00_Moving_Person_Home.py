import logging
logger = logging.getLogger(__name__)

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
userID = st.session_state['id']

col1, col2 = st.columns(2)

# load user slider data 
slider_data = {}
try:
    slider_data = requests.get(f'http://api:4000/ml/sliders/{userID}').json()[0]
except:
    st.write("**Important**: Could not connect to sample api, so using dummy data.")
    slider_data = {"avg_temp": 50, "rail_density": 50, "education": 50, "crime_safety": 50, "pop_density": 50, "healthcare": 50, "leisure": 50, "COL": 50}

# get values from the slider data
weather_val = int(slider_data['avg_temp'])
transport_val = int(slider_data['rail_density'])
education_val =  int(slider_data['education'])
safety_val =  int(slider_data['crime_safety'])
pop_density_val = int(slider_data['pop_density'])
healthcare_val = int(slider_data['healthcare'])
leisure_val = int(slider_data['leisure'])
COL_val = int(slider_data['cost_of_life'])



with col1:
    col3, col4 = st.columns(2)

    with col3:
        with st.container(border=True):
            warm_weather = st.slider("High Temperature", 0, 100, weather_val)
            weather_checkbox = st.checkbox("Include in Recommendation", value=slider_data['avg_temp_selected'], key=1)
        
        with st.container(border=True):
            robust_public_transport = st.slider("Robust Transportation", 0, 100, transport_val)
            transport_checkbox = st.checkbox("Include in Recommendation", value=slider_data['rail_density_selected'], key=2)

        with st.container(border=True):
            good_public_education = st.slider("Good public education", 0, 100, education_val)
            education_checkbox = st.checkbox("Include in Recommendation", value=slider_data['education_selected'], key=3)

        with st.container(border=True):
            safety = st.slider("High Crime Rates", 0, 100, safety_val)
            safety_checkbox = st.checkbox("Include in Recommendation", value=slider_data['crime_safety_selected'], key=4)


    with col4:
        with st.container(border=True):
            pop_density = st.slider("Population Density", 0, 100, pop_density_val)
            pop_density_checkbox = st.checkbox("Include in Recommendation", value=slider_data['pop_density_selected'], key=5)
        with st.container(border=True):
            healthcare = st.slider("Good Public Healthcare", 0, 100, healthcare_val)
            healthcare_checkbox = st.checkbox("Include in Recommendation", value=slider_data['healthcare_selected'], key=6)

        with st.container(border=True):
            leisure = st.slider("Lots of Activites", 0, 100, leisure_val)
            leisure_checkbox = st.checkbox("Include in Recommendation", value=slider_data['leisure_selected'], key=7)

        with st.container(border=True):
            cost_of_living = st.slider("Low Cost of Living", 0, 100, COL_val)
            COL_checkbox = st.checkbox("Include in Recommendation", value=slider_data['cost_of_life_selected'], key=8)

        
    logger.info('WTF is happening??')
    # Save and Generate Ranking
    # Save button
    if st.button("Save and Generate Ranking"):
        data = {"avg_temp": warm_weather, "rail_density": robust_public_transport, "education": good_public_education, "crime_safety": safety, "pop_density": pop_density, "healthcare": healthcare, "leisure": leisure, "cost_of_life": cost_of_living, "avg_temp_selected" : weather_checkbox, "rail_density_selected" : transport_checkbox, "education_selected" : education_checkbox, "crime_safety_selected" : safety_checkbox, "pop_density_selected" : pop_density_checkbox, "healthcare_selected" : healthcare_checkbox, "leisure_selected" : leisure_checkbox, "cost_of_life_selected" : COL_checkbox, "userID": userID}
        requests.put('http://api:4000/ml/sliders', json=data)  
        
        ranking_dict = requests.get(f'http://api:4000/ml/rankings/{str(userID)}/generate').json()
        logger.info(f'ranking_dict = {ranking_dict}')
        # for loop which inserts each number and country id into the database
        for i in range(1, len(ranking_dict)+1):
            # get country id from country name
            rankingNum = i
            countryName = ranking_dict[str(i)]
            
            countryID = requests.get(f'http://api:4000/c/get_countryID/{countryName}').json()[0]['id']
            
            data = {"rankingNum": int(rankingNum), "countryID": int(countryID), "userID": int(userID)}
            requests.put('http://api:4000/ml/rankings', json=data)      

        st.success("Section updated successfully!")


with col2:
    with st.container(border=True, height=800):
        st.header("Country Ranking")

        data = requests.get(f'http://api:4000/ml/rankings/{str(userID)}').json()

        df = pd.DataFrame(data)

        # Display ranking
        for index, row in df.iterrows():
            current_country = requests.get('http://api:4000/c/countries/' + str(row['countryID'])).json()
            country_name = current_country[0]['name']
            country_bio = current_country[0]['bio']
            with st.expander(f"#{index+1} - {country_name}"):
                st.write(country_bio)
                if st.button(f'View Page for {country_name}', 
                type='primary',
                use_container_width=True):
                    st.write(country_name)
                    try:
                        data = {} 
                        data = requests.get('http://api:4000/c/get_countryID/' + country_name).json() #get countryid
                        st.session_state['countryID'] = data[0]['id'] 
                        st.switch_page('pages/22_Country_Page.py')
                    except Exception as e:
                        st.write(f"An error occurred: {e}")

# Interactive Map
# st.header("Interactive Map")

# # Create a sample map
# df_map = pd.DataFrame({
#     'lat': [52.3676, 48.8566, 51.5074, 40.7128, 35.6895],
#     'lon': [4.9041, 2.3522, -0.1276, -74.0060, 139.6917],
#     'name': ['Amsterdam', 'Paris', 'London', 'New York', 'Tokyo']
# })

# fig = px.scatter_geo(df_map, lat='lat', lon='lon', text='name', scope='world')
# st.plotly_chart(fig, use_container_width=True)