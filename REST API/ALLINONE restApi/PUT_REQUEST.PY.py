import jsonpath
import requests
import json

# API URL
url = "https://reqres.in/api/users?page=2"
data = {'NAME' : 'RAJAN','MIDDLE NAME' : 'MISHRA'}
response = requests.post(url, json=data)

if response.status_code == 201:
    created_data = response.json()
    print(created_data)
else:
    print(f"Error: {response.status_code}")