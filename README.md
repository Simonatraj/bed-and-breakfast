# Bed and Breakfast (BnB) – CS50 SQL Problem Set

This repository contains my complete solutions to the **Bed and Breakfast** (BnB) problem set from CS50’s Introduction to Databases with SQL.

## Overview

For this assignment, I analyzed Boston Airbnb data to explore how short-term rentals impact the city’s tourism and housing market. Using SQL, I created several views to summarize listings, availability, reviews, and vacancy trends for June 2023. The project demonstrates SQL skills in joins, aggregation, filtering, and view creation for data analysis.

## Files

- `bnb.db` – Provided SQLite database
- `bnb.query` – Contains all SQL queries and view definitions for the assignment
- `README.md` – Project documentation

## Database Structure

The `bnb.db` database design can be seen here: https://cs50.harvard.edu/sql/psets/4/bnb/#schema

## How to Use

1. Open `bnb.db` in SQLite:
sqlite3 bnb.db
sqlite3 bnb.db

2. Load all queries and views:
.read bnb.query

3. Explore results by querying the views:
SELECT * FROM no_descriptions;
SELECT * FROM one_bedrooms;
SELECT * FROM available WHERE date = '2023-12-31';
SELECT * FROM frequently_reviewed LIMIT 5;
SELECT * FROM june_vacancies ORDER BY days_vacant DESC LIMIT 5;

4. To update a view during testing:
DROP VIEW IF EXISTS view_name;
.read bnb.query

## Notes

- All queries and view definitions are organized in a single file, `bnb.query`.
- Each view is designed to be standalone and independent.
- Dataset is sourced from insideairbnb.com, focusing on Boston.
- The assignment highlights proficiency in advanced SQL and real-world data analysis.


