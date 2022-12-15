# Yelp-Database  

The Yelp dataset is a subset of our businesses, reviews, and user data for use in personal, educational, and academic purposes. Available as JSON files.["https://www.kaggle.com/datasets/yelp-dataset/yelp-dataset"] 


Scope of the project:
a) The scope of this project is to design and create a clean relational database for the publicly available yelp database which is given in JSON format.
b) Querying this dataset to analyze service based businesses and calculate key metrics to further understand the market.

## Summary of files:
1. database-json: The dataset we are using for this project which is the publicly available yelp dataset with more than 6M rows of data
2. twitter_scrapper: Twitter Bot that scrapes tweets with specified hastags to seperately desined database.
3. yelp_api: The script uses a combination of yelp fusion API and web scrapping to extract the information needed to insert new data in our yelp database. The data is cleaned, organized and validated before populating the yelp Database.
4. ERD_yelp_database.pdf: Entity relationship diagram of the designed database.
5. UML_yelp_dataset.pdf: Unified Modeling Language of the designed database
6. data_insertion.ipynb: script that converts the json dataset into structured data and inserts the data into the designed mysql database.
7. optimized_data_insertion.ipynb: script that is highly optimized to convert yelp JSON dataset which contains more 6M rows into structured and inserting that data into the database much faster than data_insertion.ipynb.
8. model_views.sql: This file creates views for all the use cases for our database.

## Note
As is evident from the ERD and UML the unstructured JSON data available to us is converted into a clean structured form by dropping redundant and irrelevant data. All tables made are in 3rd Normal Form that means:

a) All data is atomic.

b) There are no partial dependencies.

c) There are no transitive dependencies.
