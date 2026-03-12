# SQL Testing Project — People & Pets Database

This project demonstrates basic SQL skills used in software testing and data validation.  
It includes a simple relational database with two tables: **people** and **pets**, showing a one‑to‑many relationship (one person can have multiple pets).

The project contains:
- database schema  
- sample data  
- SQL queries for analysis  
- screenshots showing query results  

## Project Structure

schema.sql      -- database structure (tables)  
data.sql        -- sample test data  
queries.sql     -- SQL queries used for testing and analysis  
screenshots/    -- screenshots from DB Fiddle  
README.md       -- project documentation  

## Database Model

Relationship:  
One person → many pets  
Foreign key: `pets.person_id` → `people.id`

Diagram:

people  
---------  
id (PK)  
name  

pets  
---------  
id (PK)  
person_id (FK → people.id)  
pet_name  
pet_type  

## How to Run the Project

You can run the SQL scripts in any MySQL environment, such as:

- DB Fiddle (recommended)  
- Local MySQL installation  
- Docker MySQL container  
- phpMyAdmin / Adminer  

Steps:  
1. Run **schema.sql** to create the tables.  
2. Run **data.sql** to insert sample data.  
3. Run **queries.sql** to explore and test the database.  
4. View screenshots in the **screenshots/** folder to see example outputs.

## Included SQL Examples

The queries demonstrate:

- basic SELECT statements  
- filtering with WHERE  
- sorting with ORDER BY  
- JOIN (one‑to‑many relationship)  
- LEFT JOIN (people without pets)  
- GROUP BY and COUNT  
- HAVING for filtering aggregated results  
- simple data analysis (e.g., number of pets by type)

## Screenshots

The **screenshots/** folder contains images showing:

- table creation  
- inserted data  
- JOIN results  
- GROUP BY results  
- filtering and sorting  

## Summary

This project demonstrates:

- SQL fundamentals  
- relational database design  
- practical query writing  
- clean and organized project structure  