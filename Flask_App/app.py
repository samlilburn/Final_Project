#import libraries
import numpy as np
from flask import Flask, render_template,request
import pickle 

#Initialize the flask App
app = Flask(__name__)
#Load the model
model = pickle.load(open('savedmodel.sav', 'rb'))

#Default homepage of web-app
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        zipCode = int(request.form['zipCode'])
        squareFootage = float(request.form['squareFootage'])
        bedrooms = float(request.form['bedrooms'])
        bathrooms = float(request.form['bathrooms'])
        propertyType_Condo = int(request.form['propertyType_Condo'])
        propertyType_Manufactured = int(request.form['propertyType_Manufactured'])
        propertyType_SingleFamily = int(request.form['propertyType_SingleFamily'])
        propertyType_Townhouse = int(request.form['propertyType_Townhouse'])
        prediction = model.predict([[zipCode, squareFootage, bedrooms, bathrooms, propertyType_Condo, propertyType_Manufactured, propertyType_SingleFamily, propertyType_Townhouse]])
        return render_template('index.html', prediction=str(prediction.round(decimals=2)))
    
    return render_template('index.html')

# Start Flask Server
if __name__ == "__main__":
    app.run()
