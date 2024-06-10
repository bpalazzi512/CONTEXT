import logging
logger = logging.getLogger(__name__)

import pandas as pd
import plotly.express as px
import streamlit as st
import requests
from modules.nav import SideBarLinks
import folium
from streamlit_folium import st_folium
# import geopandas as gpd
#import pygeoj
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()
userID = st.session_state['id']
first = requests.get(f'http://api:4000/u/users/{userID}').json()[0]['firstName']
last = requests.get(f'http://api:4000/u/users/{userID}').json()[0]['lastName']
st.title(f"Welcome back, {first} {last}")
st.write('')
st.write('')
st.write('### Update your preferences to explore compatible countries!')
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
            warm_weather = st.slider("Warm Weather", 0, 100, weather_val)
            weather_checkbox = st.checkbox("Include in Ranking", value=slider_data['avg_temp_selected'], key=1)
        
        with st.container(border=True):
            robust_public_transport = st.slider("Public Transportation", 0, 100, transport_val)
            transport_checkbox = st.checkbox("Include in Ranking", value=slider_data['rail_density_selected'], key=2)

        with st.container(border=True):
            good_public_education = st.slider("Public Education", 0, 100, education_val)
            education_checkbox = st.checkbox("Include in Ranking", value=slider_data['education_selected'], key=3)

        with st.container(border=True):
            safety = st.slider("Safety", 0, 100, safety_val)
            safety_checkbox = st.checkbox("Include in Ranking", value=slider_data['crime_safety_selected'], key=4)


    with col4:
        with st.container(border=True):
            pop_density = st.slider("Population Density", 0, 100, pop_density_val)
            pop_density_checkbox = st.checkbox("Include in Ranking", value=slider_data['pop_density_selected'], key=5)
        with st.container(border=True):
            healthcare = st.slider("Public Healthcare", 0, 100, healthcare_val)
            healthcare_checkbox = st.checkbox("Include in Ranking", value=slider_data['healthcare_selected'], key=6)

        with st.container(border=True):
            leisure = st.slider("Lots of Activites", 0, 100, leisure_val)
            leisure_checkbox = st.checkbox("Include in Ranking", value=slider_data['leisure_selected'], key=7)

        with st.container(border=True):
            cost_of_living = st.slider("Low Cost of Living", 0, 100, COL_val)
            COL_checkbox = st.checkbox("Include in Ranking", value=slider_data['cost_of_life_selected'], key=8)

        
    logger.info('WTF is happening??')
    # Save and Generate Ranking
    # Save button
    if st.button("Save and Generate Ranking"):
        if not (weather_checkbox or transport_checkbox or education_checkbox or safety_checkbox or pop_density_checkbox or healthcare_checkbox or leisure_checkbox or COL_checkbox):
            st.error("Select at least one category!")
        else:
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
    with st.container(border=True, height=700):
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


# Load GeoJSON data using pygeoj
#@st.cache_data
#def load_geojson():
#    geojson_url = "https://raw.githubusercontent.com/leakyMirror/map-of-europe/master/GeoJSON/europe.geojson"
#    response = requests.get(geojson_url).json()
#    geo_data = pygeoj.load(data=response)
#    return geo_data

#geo_data = load_geojson()

# Get the country rankings data
userID = st.session_state.get('id', 1)  # Default to 1 if not set
data = requests.get(f'http://api:4000/ml/rankings/{str(userID)}').json()
df = pd.DataFrame(data)

# Estimated coordinates for each country
country_coordinates = {
    'Austria': [47.5162, 14.5501],
    'Belgium': [50.8503, 4.3517],
    'Bulgaria': [42.7339, 25.4858],
    'Croatia': [45.1, 15.2],
    'Cyprus': [35.1264, 33.4299],
    'Czech Republic': [49.8175, 15.4730],
    'Denmark': [56.2639, 9.5018],
    'Estonia': [58.5953, 25.0136],
    'Finland': [61.9241, 25.7482],
    'France': [46.6034, 1.8883],
    'Germany': [51.1657, 10.4515],
    'Greece': [39.0742, 21.8243],
    'Hungary': [47.1625, 19.5033],
    'Ireland': [53.1424, -7.6921],
    'Italy': [41.8719, 12.5674],
    'Latvia': [56.8796, 24.6032],
    'Lithuania': [55.1694, 23.8813],
    'Luxembourg': [49.8153, 6.1296],
    'Malta': [35.9375, 14.3754],
    'Netherlands': [52.1326, 5.2913],
    'Poland': [51.9194, 19.1451],
    'Portugal': [39.3999, -8.2245],
    'Romania': [45.9432, 24.9668],
    'Slovakia': [48.6690, 19.6990],
    'Slovenia': [46.1512, 14.9955],
    'Spain': [40.4637, -3.7492],
    'Sweden': [60.1282, 18.6435]
}

# Create a color map
cmap = plt.get_cmap('RdYlGn_r')
norm = mcolors.Normalize(vmin=1, vmax=len(df))

def get_color(rank):
    return mcolors.to_hex(cmap(norm(rank)))

# Create a Folium map centered on Europe
m = folium.Map(location=[54.5260, 15.2551], zoom_start=4)

# Add GeoJSON layer to the map with color based on ranking
for index, row in df.iterrows():
    country_name = requests.get(f'http://api:4000/c/countries/{row["countryID"]}').json()[0]['name']
    ranking = index + 1
    color = get_color(ranking)
    #for feature in geo_data:
        #if feature.properties['NAME'] == country_name:
            #folium.GeoJson(
            #    feature.geometry,
            #    style_function=lambda x, color=color: {
            #        'fillColor': color,
            #        'color': 'black',
            #        'weight': 2,
            #        'fillOpacity': 0.5,
            #    }
            #).add_to(m)
            #coordinates = country_coordinates.get(country_name, [0, 0])
            #folium.Marker(
            #    location=coordinates,
            #    popup=f"#{ranking} - {country_name}",
            #    icon=folium.Icon(color='blue', icon='info-sign')
            #).add_to(m)
    coordinates = country_coordinates.get(country_name, [0, 0])
    folium.Marker(
         location=coordinates,
         popup=f"#{ranking} - {country_name}",
         icon=folium.Icon(color='blue', icon='info-sign')
     ).add_to(m)

# Display the map in the Streamlit app
st_folium(m, width=1250, height=500)