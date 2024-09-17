# Uber-Data-Engineering-Project

Th aim of the project is to build an end to end data pipeline using Google Cloud Platform Services (GCP), Mage AI and Looker Studio.

## Setup

Initial data transformation was done locally using Jupyter Notebooks

### Data

The project utilizes publicly available Uber Ride data found at https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page.

### GCP

1. Setup Big Query Bucket to store the Uber Ride Data so it can be requested as an API.
2. Setup a VM Instance with Python 3.11, pip3, Mage AI, google-cloud and google-cloud-bigquery
3. Mage AI can then be accessed using the localhost of the instance at port 6789 to create the pipeline 
