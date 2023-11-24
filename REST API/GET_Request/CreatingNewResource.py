import jsonpath
import requests
import json

# API URL
url = "https://reqres.in/api/users"  # Remove extra slashes

# Read input JSON from file
with open("C:\\Users\\LENOVO.T470s\\OneDrive\\Desktop\\py-k\\pract\\REST API\\CreateUser.json", "r") as file:
    json_input = file.read()

# Convert JSON input to a dictionary
request_json = json.loads(json_input)

# Make POST request with JSON request body
response = requests.post(url, json=request_json)

# Print response content
print(response.content)

# Validating response code
assert response.status_code == 201

# Fetch Header from Response code
print(response.headers.get("content-length"))

#Parse response to Json format
response_json = json.loads(response.text)

#Pick ID using Json path
id = jsonpath.jsonpath(response_json,'id')
print(id[0])