import requests
import json
import jsonpath


#API URL
url = "https://reqres.in/api/users?page=2"

#Send Get Requests

response = requests.get(url)
#print(response)

#Display Response Content

#print(response.content)
#print(response.headers) ##### Fetch headder of the Response

#Parse response to json format

json_response = json.loads(response.text)
#print(json_response)

#Fetch value using Json Path

pages = jsonpath.jsonpath(json_response,"total_pages")
print (pages[0]) ##show how many pages are there
assert pages[0] == 2 ## it will assert pages is 2 or not when not 2 we got assertion