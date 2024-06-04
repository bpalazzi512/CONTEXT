import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
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
        warm_weather = st.slider("Warm weather", 0, 100, 50)
        robust_public_transport = st.slider("Robust public transport", 0, 100, 50)
        good_public_education = st.slider("Good public education", 0, 100, 50)
        safety = st.slider("Safety", 0, 100, 50)

    with col4:
        warm_weather = st.slider("aaa", 0, 100, 50)
        robust_public_transport = st.slider("bbb", 0, 100, 50)
        good_public_education = st.slider("ccc", 0, 100, 50)
        safety = st.slider("ddd", 0, 100, 50)

with col2:
# Country Ranking
    st.header("Country Ranking")

    # Sample data for country ranking
    data = {
        "Country": ["Country 1", "Country 2", "Country 3", "Country 4", "Country 5", "Country 6", "Country 7", "Country 8"],
        "Bio": ["Start of bio...", "...", "...", "...", "...", "...", "...", "..."],
    }

    df = pd.DataFrame(data)

    # Display ranking
    for index, row in df.iterrows():
        with st.expander(f"#{index+1} - {row['Country']}"):
            st.write(row['Bio'])
            if st.button(f'View Full Country Page {index + 1}', 
             type='primary',
             use_container_width=True):
                st.switch_page('pages/22_Country_Page.py')

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