# Uber Data Engineering Project

This project demonstrates an end-to-end data engineering pipeline built using Google Cloud Platform (GCP), Mage AI, and Looker Studio. The pipeline ingests raw Uber Ride data, processes it through a VM instance, and stores the transformed data in BigQuery for analysis.

## Project Architecture

The project architecture is as follows:

  - Cloud Storage Bucket: Raw Uber Ride data is stored in a GCP Cloud Storage bucket.
  - VM Instance: A Google Compute Engine VM instance running Mage AI is used for data transformation. Mage AI handles the ETL (Extract, Transform, Load) process, creating a pipeline to process the raw data.
  - BigQuery: The transformed data is loaded into BigQuery, where it is stored in a structured format. Analysts can access this data for reporting and analytics via Looker Studio.

![Architecture Image](/images/architecture.jpg)

## Data

The project leverages publicly available Uber Ride data from the [NYC Taxi and Limousine Commission](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page).

### Data Model

The data is structured into multiple dimension tables and a fact table. Below is a representation of the key tables and the relationships between them:

  - fact_table: Contains the core ride details (e.g., VendorID, fare_amount, etc.).
  - datetime_dim: Stores ride pickup and dropoff times (tpep_pickup_datetime, tpep_dropoff_datetime).
  - passenger_count_dim: Stores the number of passengers per trip (passenger_count).
  - trip_distance_dim: Records the distance of each trip (trip_distance).
  - rate_code_dim: Stores information about the rate codes used (rate_code_name).
  - pickup_location_dim: Records latitude and longitude for pickup locations (pickup_latitude, pickup_longitude).
  - dropoff_location_dim: Records latitude and longitude for dropoff locations (dropoff_latitude, dropoff_longitude).
  - payment_type_dim: Captures the payment methods used for each trip (payment_type_name).

![Data Model](/images/data_model.jpeg)

These tables are joined to create an analytics table in BigQuery which can be found in the create_tbl_analytics.sql file

## Setup Instructions

1. Data Transformation: Initial data transformation is done locally using Jupyter Notebooks.
2. Google Cloud Platform Setup:
   - Create a BigQuery dataset and table for storing Uber ride data.
   - Set up a VM instance with Python 3.11, Mage AI, and necessary Google Cloud libraries (google-cloud, google-cloud-bigquery).
   - Access Mage AI on the VM's localhost (port 6789) to build and manage the ETL pipeline.
   - Load Data: Use the ETL pipeline to load the transformed data into BigQuery.
   - Data Analytics: Visualize and analyze the data using Looker Studio connected to BigQuery.
