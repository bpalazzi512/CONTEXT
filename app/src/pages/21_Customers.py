import logging
import requests
import streamlit as st
from modules.nav import SideBarLinks
import pandas as pd
import time

st.set_page_config(layout='wide')

SideBarLinks()

# Set page title
st.title("Customer Information Table")
st.write("### List of users who are interested in moving")
st.write("")

# Fetch data from API
data = {}
moverID = st.session_state['id']
data = requests.get(f'http://api:4000/mv/contacts/{moverID}').json()

df = pd.DataFrame(data)

# Initialize checkbox states in session state if not already done
if 'checkbox_states' not in st.session_state:
    st.session_state['checkbox_states'] = {}

# Function to display the table with buttons
def display_customers(df):
    header_cols = st.columns([2, 2, 5, 3, 3, 3])
    header_cols[0].write("**First**")
    header_cols[1].write("**Last**")
    header_cols[2].write("**Email**")
    header_cols[3].write("**Phone Number**")
    header_cols[4].write("**Date**")

    profit = 0
    for index, row in df.iterrows():
        cols = st.columns([2, 2, 5, 3, 3, 3])
        first = row["firstName"]
        last = row["lastName"]
        cols[0].write(f"**{first}**")
        cols[1].write(f"**{last}**")

        stateName = row['stateName']
        countryName = row['name']
        cost = row['cost']
        profit += cost

        st.write(f'*From {stateName} to {countryName} for ${cost:,}*')
        cols[2].write(row["email"])
        cols[3].write(row["phone"])
        cols[4].write(str(row["dateContacted"])[:16])
        
        # Generate a unique key for each checkbox
        checkbox_key = f"checkbox_{index}_{row['id']}"
        
        # Initialize the checkbox state in session state if not already done
        if checkbox_key not in st.session_state['checkbox_states']:
            st.session_state['checkbox_states'][checkbox_key] = False
        
        # Create the checkbox and store its state
        checkbox_states[checkbox_key] = cols[5].checkbox("Contacted", value=st.session_state['checkbox_states'][checkbox_key], key=checkbox_key)
        
        # Update the session state with the current value of the checkbox
        st.session_state['checkbox_states'][checkbox_key] = checkbox_states[checkbox_key]

    st.write("")
    st.write("")
    if st.button("Remove Selected Customers"):
        for key, checked in checkbox_states.items():
            if checked:
                index = int(key.split('_')[1])  # Extract index from key
                user_id = df.at[index, 'id']
                response = requests.delete(f'http://api:4000/mv/contact/{user_id}/{moverID}')
                
                if response.status_code == 200:
                    st.success(f"Deleted contact for userID: {user_id}, moverID: {moverID}")
                    # Remove the entry from session state
                    del st.session_state['checkbox_states'][key]
                else:
                    st.error(f"Failed to delete contact for userID: {user_id}, moverID: {moverID}")
        time.sleep(1)  # Add a 1-second delay
        st.rerun()

    st.write(f'### Potential Revenue: ${profit:,}')

# Initialize checkbox states dictionary
checkbox_states = {}

# Display the customers
display_customers(df)
