AdventureWorks Data Analytics Project
Overview
This repository contains SQL scripts and documentation for an end-to-end data analytics project leveraging AdventureWorks databases. The project aimed to enhance sales reporting by transitioning from static reports to dynamic visual dashboards, providing stakeholders with actionable insights for informed decision-making.

Files

AdventureWorks Sales Report.pbix: A dynamic 3 page report summarizing internet sales data over 3 years.

dimCalendar.sql: SQL script for cleaning the DimDate table, including formatting date fields and filtering data for the desired timeframe.

dimClient.sql: SQL script for cleaning the DimCustomer table, including handling null values and standardizing gender categories.

dimProduct_cl.sql: SQL script for cleaning the DimProduct table, including joining with related tables and handling discontinued products.

factInternetSales_cl.sql: SQL script for cleaning the FactInternetSales table, including filtering data for the desired timeframe and selecting relevant fields for analysis.

Update_AdventureWorksDW_Data.sql: SQL Script from David Alzamendi (https://techtalkcorner.com), updating the Adventureworks data to 2024
