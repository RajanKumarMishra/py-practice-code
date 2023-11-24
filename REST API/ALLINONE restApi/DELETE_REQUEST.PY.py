import jsonpath
import requests
import json

# API URL
url = "https://reqres.in/api/users/2"
data = {'MIDDLE NAME' : 'MISHRA'}
response = requests.delete(url)

assert response.status_code == 204

# if response.status_code == 204:
#     created_data = response.json()
#     print(created_data)
# else:
#     print(f"Error: {response.status_code}")