# README

This is my solution to create an API endpoint that fetches data from SwaggerAPI, finding a user list and manipulating it to display only users who are located within 50 miles of London.
I utilised the rest-client gem to fetch the data through rails and the geokit gem finally to calculate users lat and long locations to London. I initially tested the API by sending GET requests through Postman to make sure that a 200 response was received. I installed PRY to help debug along the way.

* Configuration - 

Step 1. Clone from Github repository

Step 2. Runs rails server 'rails s'

Step 3. access via http://127.0.0.1:3000/users 



