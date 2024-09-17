# Uber-Data-Engineering-Project

This project demonstrates the creation of a comprehensive end-to-end data pipeline using Google Cloud Platform (GCP), Mage AI, and Looker Studio. The goal is to process and visualize Uber Ride data efficiently.

## Project Overview

The pipeline leverages GCP services to store, process, and query large datasets, Mage AI for orchestration, and Looker Studio for data visualization.

### Data Source

The dataset consists of publicly available Uber Ride data, accessible from the [NYC TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page) page.

### GCP Setup

1. BigQuery: A BigQuery Bucket is set up to store the raw Uber Ride data, enabling scalable access through API requests.
2. Virtual Machine Instance: A VM instance is configured with Python 3.11, Mage AI, and relevant Google Cloud libraries such as google-cloud and google-cloud-bigquery.
3. Mage AI: Mage AI is hosted on the VM instance and can be accessed via the localhost (port 6789) to build and manage the data pipeline.

### Local Development

Initial data transformations were performed locally using Jupyter Notebooks for easy experimentation and prototyping.
