# Import dependencies
import pandas as pd
from sklearn.linear_model import LinearRegression
import pickle

# Read in master CSV
url = "https://raw.githubusercontent.com/samlilburn07/Final_Project/main/final_data.csv"

master_df = pd.read_csv(url)
print(master_df)

# Filter for desired columns
df = master_df[["zipCode", "propertyType", "squareFootage", "bedrooms", "bathrooms", "price"]]
print(df)

# Remove properties > 1.0M property value
df = df[(df["price"] >= 80000) & (df["price"] <= 1000000)]
print(df)

# Remove rows with null values
clean_df = df.dropna()
print(clean_df)

# Extract Independent (X) and Dependent (y) variables
X = clean_df.drop(columns="price", axis=1)
y = clean_df[["price"]]

# Convert string values to numerical
X = pd.get_dummies(X)
print(X)

# Split the data into training and testing dataset
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X,y,test_size=0.2,random_state = 0)

#Fit the model over the training dataset
from sklearn.linear_model import LinearRegression
regression = LinearRegression()
regression.fit(X_train,y_train)

# https://www.analyticsvidhya.com/blog/2020/09/integrating-machine-learning-into-web-applications-with-flask/
# Saving model to current directory
# Pickle serializes objects so they can be saved to a file, and loaded in a program again later on.
pickle.dump(regression, open('model.pkl','wb'))

#Loading model to compare the results
model = pickle.load(open('model.pkl','rb'))
print(model.predict(X))