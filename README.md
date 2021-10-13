# README

This is my solution to create an API endpoint that fetches data from SwaggerAPI, finding a user list and manipulating it to display only users who are located within 50 miles of London.

I utilised the rest-client gem to fetch the data through rails and the geokit gem finally to calculate users lat and long locations to London. 

Initially I tested the API by sending GET requests through Postman to make sure that a 200 response was received, then I installed PRY to help debug along the way.

* Configuration

Step 1. Clone from Github repository

Step 2. run ```bundle install```

Step 2. Runs rails server ```rails s```

Step 3. Access via http://localhost:3000/users 

* Testing

In the root directory, enter ```rspec``` to run the test suite.
