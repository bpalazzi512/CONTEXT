import logging
import requests
logger = logging.getLogger()

import streamlit as st
from modules.nav import SideBarLinks
import requests
import pandas as pd

st.set_page_config(layout = 'wide')

SideBarLinks()

# Sample data for customers
data = {
    "Customer Name": ["Alice Johnson", "Bob Smith", "Charlie Brown", "David Wilson"],
    "Email": ["alice@example.com", "bob@example.com", "charlie@example.com", "david@example.com"],
    "Phone Number": ["123-456-7890", "234-567-8901", "345-678-9012", "456-789-0123"]
}

# Create a DataFrame
df = pd.DataFrame(data)

# Set page title
# st.set_page_config(page_title="Customer Information Table")

# Page Title
st.title("Customer Information Table")

# Display the DataFrame as a table
st.table(df)