# Incubyte-data-engineering-technical-assessment

# Data Engineering Technical Assessment

## Overview

This project implements an ETL process for the airline loyalty
program described in the assessment.

## Technology

- Microsoft SQL Server
- T-SQL
- SQL Server JSON functions
- GitHub

## Project Structure

- SQL - Database and ETL scripts
- SampleData - Sample source files
- Tests - Validation and test queries
- Documentation - Architecture and design

## ETL Flow

Source
→ Raw
→ Staging
→ Validation
→ Country Target Tables

JSON
→ Raw JSON
→ Flatten
→ Redemption Table

## Key Features

- Raw and staging layers
- Age calculation
- Stale member calculation
- Latest record wins
- Country-specific member tables
- JSON redemption processing
- Data quality validation
- Error handling
- Large-volume processing considerations

## How to Run

1. Run 00_Database_Setup.sql
2. Run 01_Raw_Tables.sql
3. Load sample data
4. Run 02_Staging_Tables.sql
5. Run 04_Transformations.sql
6. Run 03_Target_Tables.sql
7. Run 05_Country_Split.sql
8. Run 06_Redemption_JSON.sql
9. Run 07_Validations.sql
10. Run Tests/Test_Cases.sql

## AI-Assisted Development

AI tools were used to assist with SQL development, design review,
test scenarios and validation ideas.
