import logging
logger = logging.getLogger()

import pandas as pd
import plotly.express as px
import streamlit as st
from modules.nav import SideBarLinks
from streamlit_modal import Modal

# Show appropriate sidebar links for the role of the currently logged in user
st.set_page_config(layout='wide')
SideBarLinks()

st.title("Country Page: The Netherlands")
st.write("Welcome to the country page for The Netherlands!")

if st.button('Back', 
             type='primary',
             use_container_width=True):
    st.switch_page('pages/00_Moving_Person_Home.py')

# Country Name
st.title("The Netherlands")

# Placeholder for Image (Replace 'image_url' with the actual image URL or file path)
image_url = 'https://i.natgeofe.com/k/4a509698-ab53-4581-af61-4c4808a81a76/netherlands-tulip-fields_16x9.jpg?w=1200'
st.image(image_url, caption="A windmill in a tulip field", use_column_width=True)

# Country Bio
st.subheader("Bio")
st.markdown("""
The Netherlands is a country located in Western Europe with a rich cultural heritage and a strong tradition of tolerance and innovation. Known for its flat landscape, extensive canal systems, windmills, tulip fields, and cycling routes, the Netherlands offers a unique blend of natural beauty and urban sophistication.
""")

# Tips and Extra Info
st.subheader("Tips / Extra Info")
st.markdown("""
- **Cultural Quirks**: The Dutch are known for their directness and openness, which can sometimes come across as blunt to newcomers.
- **How to Find Work**: The Netherlands has a strong job market, particularly in industries like technology, engineering, and finance. Websites like LinkedIn and Indeed, as well as local job boards, can be very helpful.
- **Public Transport**: The country boasts an efficient public transportation system, including trains, buses, trams, and ferries, making it easy to travel both within and between cities.
- **Weather**: The weather can be quite variable, so it's a good idea to always carry an umbrella or raincoat.
- **Language**: While Dutch is the official language, English is widely spoken, especially in urban areas and among younger people.
""")

# Mover Data Table
st.markdown("## Explore Compatible Movers to this Destination")
data = {
    "Mover Name": ["Fontemoves", "Speedy Movers", "Global Transport"],
    "Quote": ["$3000", "$3200", "$3100"],
    "Stars": ["⭐⭐⭐⭐", "⭐⭐⭐", "⭐⭐⭐⭐⭐"]
}

# Create a DataFrame
df = pd.DataFrame(data)


# Function to display the table with buttons
def display_movers_with_buttons(df):
    for index, row in df.iterrows():
        cols = st.columns(len(row) + 1)
        cols[0].write(row["Mover Name"])
        cols[1].write(row["Quote"])
        cols[2].write(row["Stars"])
        button_ph = cols[3].empty()
        if button_ph.button("Contact Mover", key=index):
            modal = Modal(key="success", title=f"{row['Mover Name']} Has Been Contacted!")
            with modal.container():
                st.markdown("Expect to hear from them shortly")
            

# Display the DataFrame as a custom table with buttons
display_movers_with_buttons(df)
