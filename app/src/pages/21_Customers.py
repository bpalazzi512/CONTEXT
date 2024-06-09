import logging
import requests
logger = logging.getLogger()
from streamlit_modal import Modal
import streamlit as st
from modules.nav import SideBarLinks
import pandas as pd

st.set_page_config(layout = 'wide')

SideBarLinks()

# Sample data for customers
# Set page title
# st.set_page_config(page_title="Customer Information Table")

# Page Title
st.title("Customer Information Table")


# data = {
#     "Customer Name": ["Alice Johnson", "Bob Smith", "Charlie Brown", "David Wilson"],
#     "Email": ["alice@example.com", "bob@example.com", "charlie@example.com", "david@example.com"],
#     "Phone Number": ["123-456-7890", "234-567-8901", "345-678-9012", "456-789-0123"]
# }

data = {}
moverID = st.session_state['id']
data = requests.get(f'http://api:4000/mv/moverContact/{moverID}').json()



df = pd.DataFrame(data)
# Dictionary to hold the checkbox states
checkbox_states = {}
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
        cols[0].write(row["firstName"])
        cols[1].write(row["lastName"])

        stateName = row['stateName']
        countryName = row['name']
        cost = row['cost']
        profit += cost

        st.write(f'*From {stateName} to {countryName} for ${cost:,}*')
        cols[2].write(row["email"])
        cols[3].write(row["phone"])
        cols[4].write(str(row["dateContacted"])[:16])
        button_ph = cols[5].empty()
        #cols[4].checkbox("Contacted", value=False, key=f"checkbox_{index}")
        checkbox_states[index] = cols[5].checkbox("Contacted", value=False, key=f"checkbox_{index}")



# Button to remove selected customers
    st.write("")
    st.write("")
    if st.button("Remove Selected Customers"):
      for index, checked in checkbox_states.items():
          if checked:
            user_id = df.at[index, 'id']
            response = requests.delete(f'http://api:4000/mv/userContact/{user_id}/{moverID}')
            if response.status_code == 200:
                st.success(f"Deleted contact for userID: {user_id}, moverID: {moverID}")
            else:
                st.error(f"Failed to delete contact for userID: {user_id}, moverID: {moverID}")
    st.write(f'**Potential Revenue: ${profit:,}**')


display_customers(df)




