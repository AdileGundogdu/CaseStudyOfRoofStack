# Case Study Of Roof Stacks

# Report Visualizer

The task is to build a system that integrates *Firebase*, *Google Cloud Platform (GCP) BigQuery*, and *Looker(Data) Studio* to visualize data. For this task, I used Python, Firebase Database, Google Cloud Platform (GCP) BigQuery, and Looker(Data) Studio.

# Building A System

To generate data sets, I used Python and I needed to install *firebase-admin*. Then, I wrote this code:
https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/171844ac5687fc7d0ebbe3b3ae8feec6421ca39b/roofstack_casestudy.ipynb

This code creates a fake data set that has 10 users and their orders'. 

# Firebase Part

I created a Firebase project that contains two collections: users and items. To download the *serviceAccountKey.json* file, I went to *the project setting* then *the service account* to *generate new private key*.

The users collection holds the users' information, while the items collection includes the users' order information. While the users collection has four areas: username, email, created and modified dates, the items collection has userId, itemName, and created and modified dates. Then, I connected these two collections using indexes. 

For transferring data from Firestore to BigQuery, install the *Stream Firestore to BigQuery* extension for each collection. You can add this extension from *Extension Page*

# Big Query Part

After creating a big query project in GCP and integrating the Firebase to sync data, I created *SQL* codes to clean and manipulate the data:

* For Users: https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/171844ac5687fc7d0ebbe3b3ae8feec6421ca39b/Users'%20Query.sql
* For Items: https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/171844ac5687fc7d0ebbe3b3ae8feec6421ca39b/Items'%20Query.sql
* For visualization data: https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/171844ac5687fc7d0ebbe3b3ae8feec6421ca39b/combine_data.sql
   
# Looker Studio Part

In the bigQuery, click main data(for me it is combined_data) -> *EXPORT* -> *EXPLORE WITH LOOKER STUDIO*. Then the Looker Console opens for visualizing. 

# The Last Part: Showing data in the web app

For this, please install *flask*. 

*pip install flask*

I used Flask to display the HTML code on a web app. To do this, create a subfolder in the folder where your Flask code is located and name it templates. Then, place your *html_code.html* file in this folder and add your own Looker Studio link to it. You can get this link from File -> Embed Report. Finally, you can access the report using the service I used, which is *http://localhost:8080/*.

* Flask Code: https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/ffcc53398e13bafa2c2937b2f659534aa81c61b9/flask.ipynb
* HTML Code: https://github.com/AdileGundogdu/CaseStudyOfRoofStack/blob/ffcc53398e13bafa2c2937b2f659534aa81c61b9/HTML_code.html
* Lastly, If there is an error, you can access the report through this link: https://lookerstudio.google.com/embed/reporting/2abfb38d-826f-49bb-a127-1cb183759095/page/tEnnC

