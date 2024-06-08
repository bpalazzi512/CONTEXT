import logging
logger = logging.getLogger()

import pandas as pd
import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

# Show appropriate sidebar links for the role of the currently logged in user
SideBarLinks()

data = {}
userID = st.session_state['id']
try:
    data = requests.get(f'http://api:4000/u/users/{userID}').json()
except:
    st.write("**Important**: Could not connect to sample api, so using dummy data.")
    user_data = {"name":"Dummy Country", "z": {"b": "456", "c": "goodbye"}}

df = pd.DataFrame(data)

# init fields with random data
email = "test@gmail.com"
age = 25
phone = "123-456-7890"
first_name = "John"
last_name = "Doe"
home_state = "California"
move_load = "Full Household"

for index, rows in df.iterrows():
    email = rows['email']
    age = rows['age']
    phone = rows['phone']
    first_name = rows['firstName']
    last_name = rows['lastName']
    home_state = rows['homeStateID']
    move_load = rows['moveLoad']


# User input fields
first_name = st.text_input("First Name", value=first_name)
last_name = st.text_input("Last Name", value=last_name)
email = st.text_input("Email", value=email)
phone_number = st.text_input("Phone Number", value=phone)
age = st.number_input("Age", min_value=0, max_value=120, step=1, value=age)
home_state = st.selectbox("Home State", ["Alabama", "Alaska", "Arizona", "Arkansas", "California", 
                                         "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", 
                                         "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", 
                                         "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", 
                                         "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
                                         "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
                                         "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
                                         "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", 
                                         "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", 
                                         "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"], index=home_state, placeholder="Select a state")

languages = [
    "Afrikaans", "Albanian", "Amharic", "Arabic", "Armenian", "Azerbaijani", "Basque", "Belarusian", "Bengali", "Bosnian",
    "Bulgarian", "Catalan", "Cebuano", "Chichewa", "Chinese", "Corsican", "Croatian", "Czech", "Danish", "Dutch",
    "English", "Esperanto", "Estonian", "Filipino", "Finnish", "French", "Frisian", "Galician", "Georgian", "German",
    "Greek", "Gujarati", "Haitian Creole", "Hausa", "Hawaiian", "Hebrew", "Hindi", "Hmong", "Hungarian", "Icelandic",
    "Igbo", "Indonesian", "Irish", "Italian", "Japanese", "Javanese", "Kannada", "Kazakh", "Khmer", "Kinyarwanda",
    "Korean", "Kurdish (Kurmanji)", "Kyrgyz", "Lao", "Latin", "Latvian", "Lithuanian", "Luxembourgish", "Macedonian",
    "Malagasy", "Malay", "Malayalam", "Maltese", "Maori", "Marathi", "Mongolian", "Myanmar (Burmese)", "Nepali",
    "Norwegian", "Odia (Oriya)", "Pashto", "Persian", "Polish", "Portuguese", "Punjabi", "Romanian", "Russian",
    "Samoan", "Scots Gaelic", "Serbian", "Sesotho", "Shona", "Sindhi", "Sinhala", "Slovak", "Slovenian", "Somali",
    "Spanish", "Sundanese", "Swahili", "Swedish", "Tajik", "Tamil", "Tatar", "Telugu", "Thai", "Turkish", "Turkmen",
    "Ukrainian", "Urdu", "Uyghur", "Uzbek", "Vietnamese", "Welsh", "Xhosa", "Yiddish", "Yoruba", "Zulu"
]

# Language dropdown
language = st.selectbox("Preferred Language", languages, index=20, placeholder="Select a language")

# Save button
if st.button("Save"):
    # Logic to save the user profile information
    st.success("Profile updated successfully!")
    # For demonstration, we'll just display the entered data
    st.write("First Name:", first_name)
    st.write("Last Name:", last_name)
    st.write("Email:", email)
    st.write("Phone Number:", phone_number)
    st.write("Age:", age)
    st.write("Home State:", home_state)
    st.write("Language:", language)


