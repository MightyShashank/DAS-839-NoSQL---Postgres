# DAS-839-NoSQL---Postgres
This project was made as a part of DAS-839 NoSQL

**Git LFS required**
The project uses Git LFS to serve the TSV files.
Ensure you have Git LFS setup on your machine, or follow the following commands in your terminal to set it up

## Setup Instructions

### Create Tables
Run the queries in **`create_tables.sql`** to set up the schema for the tables **`keywords`** and **`uris`**.

### Load Data
Use **`bulkload_tables.sql`** to load data into the tables.  
**Before executing, update the file paths in the `\COPY` statements** to match the actual dataset locations.

## Query Solutions

- The solutions for **Section B, Problem 2** are provided in SQL files (in the sql directory) with the following naming convention:
  - **`Problem2_Q<num>.sql`** → Solution to Question `<num>`
  - **Example:** The solution to Question 1 is in **`Problem2_Q1.sql`**.

## Explanations

- Detailed explanations of the queries can be found in the report:  
**[`NoSQL_Assignment_1_report.pdf`]([NoSQL_Assignment_1_report.pdf](https://github.com/MightyShashank/DAS-839-NoSQL---Postgres/blob/main/NoSQL_Assignment_1_report.pdf))**

---

**Make sure all file paths are correctly set before running the queries.**
