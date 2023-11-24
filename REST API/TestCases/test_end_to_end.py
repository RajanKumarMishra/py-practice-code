import jsonpath
import requests
import json

def test_add_new_data():
    App_URL = "https://thetestingworldapi.com/"
    f= open("C:\\Users\\LENOVO.T470s\\OneDrive\\Desktop\\py-k\\pract\\REST API\\CreateUser.json", "r")
    # Convert JSON input to a dictionary
    request_json = json.loads(f.read())
    response=requests.post(App_URL,request_json)
    #print(response.text)
    id=jsonpath.jsonpath(response.json(),'id')
    print(id[0])