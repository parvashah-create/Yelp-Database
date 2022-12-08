## Summary 

We use external sources to add more data to our database. In this project we use a combination of yelp fusion and web scrapping to get all the data that we need. Some data is not available, so we have made close approximations for such data. After extracting the data we perform analysis on to verify the accuracy, completeness and consistency of the collected data. After we have throughly cleaned the data we use several charts to visualize and understand the relationship between variables in the dataset. finally, we insert the new data in the main yelpdb database.


The following is the summary of all the files in this folder:

yelp_api.ipynb : jupyter notebook which exctracts data from yelp fusion api and web scrapping. Data is then cleaned and finally inserted in the databae.

use-cases.sql : SQL file that contains 5 use cases and its SQL statements
