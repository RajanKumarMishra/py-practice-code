import jsonpath
import requests
import json

# API URL
url = "https://reqres.in/api/users/2"

# Read input JSON from file
with open("C:\\Users\\LENOVO.T470s\\OneDrive\\Desktop\\py-k\\pract\\REST API\\CreateUser.json", "r") as file:
    json_input = file.read()

# Convert JSON input to a dictionary
request_json = json.loads(json_input)

# Make PUT request with JSON request body
response = requests.put(url, json=request_json)

# Print response content
print(response.content)

# Validating response code
assert response.status_code == 200

# Fetch Header from Response code
#print(response.headers.get("content-length"))

#Parse response to Json format
response_json = json.loads(response.text)

# Pick 'updatedAt' using JSON path
UPDATED = jsonpath.jsonpath(response_json,'updatedAt') ###updatedAt is used to adding the date
print(UPDATED[0])