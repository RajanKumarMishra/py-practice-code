from flask import Flask, render_template
app = Flask(__name__)

## Creating routes
@app.route('/')
def hello_world():
    return render_template('index.html') ## rander and show the HTML page
    return 'Hello, World!'

## Creating routes with post request for communicating this we have to http://127.0.0.1:8000/products open the products page
@app.route('/products') ## http://127.0.0.1:8000/products open the products page
def products():
    return 'this is product page'

### static file as it is server our file in browser file should be mp3 or txt or any thing else
###for Rendering to html:---
'''IN TEMPLATE FOLDER CREATE INDEX.HTML 1ST 
    FOR RENDERING THE TEMPLATE WE HAVE TO IMPORT render_template'''
## 



if __name__=="__main__":
    app.run(debug=True, port=8000)  ##changing the port
    