# Airline Data Engineering Assessment

## Architecture

The solution uses a simple ETL architecture:

Source
→ Raw
→ Staging
→ Validation
→ Country Target Tables

The JSON feed follows:

JSON Feed
→ Raw JSON
→ JSON Flattening
→ Redemption Table

## Raw Layer

The raw layer stores source data with minimal transformation.

## Staging Layer

The staging layer converts source values into appropriate SQL Server
data types and calculates derived fields.

Derived fields:

- Age
- Stale_Member

## Latest Record Wins

ROW_NUMBER() is used with Member_ID as the partition key and Load_Date
in descending order.

The record with RN = 1 is treated as the latest member record.

## Country Processing

The latest member record is inserted into the appropriate country
table based on the Country value.

## JSON Processing

SQL Server OPENJSON() is used to flatten the redemption array into
individual transaction records.

## Data Validation

The process validates:

- Mandatory fields
- Duplicate Member IDs
- Invalid dates
- Invalid active flags
- Invalid redemption values

Invalid records are stored in the error table.

## Scalability

For very large volumes, the process should use:

- Bulk loading
- Batch processing
- Incremental loading
- Set-based SQL operations
- Appropriate indexing
- Avoiding row-by-row processing
- Processing only newly received files/records

The assessment requires the design to consider billions of records
per day, so the implementation avoids cursor-based or row-by-row
processing.
