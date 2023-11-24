import requests

## For delete the resource we want the url of the resource
##used to remove resource from the server

#API URL

url = "https://reqres.in/api/users/2"

#print Response code

response = requests.delete(url)
print(response.status_code)

assert response.status_code == 204