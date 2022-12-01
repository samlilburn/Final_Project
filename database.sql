-- 17492 rows in all_data
SELECT COUNT(*) FROM all_data

CREATE TABLE final_data
AS SELECT ad."bedrooms", ad."bathrooms", ad."squareFootage", 
ad."yearBuilt", ad."lotSize", "propertyType", ad."price", 
ad."addressLine1", ad."addressLine2", ad."city", ad."state", 
ad."zipCode", ad."status", ad."daysOnMarket", ad."latitude", 
ad."longitude"
FROM all_data as ad
WHERE (ad."propertyType"='Single Family' OR ad."propertyType"='Condo' 
OR ad."propertyType"='Manufactured' OR ad."propertyType"='Townhouse')

-- 16511 rows in final_data
SELECT COUNT(*) FROM final_data

-- Below query finds 2 null values for bedrooms.
select sum(case when final_data."bedrooms" is null then 1 else 0 end) count_nulls
     , count(final_data."bedrooms") count_not_nulls 
  from final_data;
  
-- Below query find 288 null values for bathrooms.
select sum(case when final_data."bathrooms" is null then 1 else 0 end) count_nulls
     , count(final_data."bathrooms") count_not_nulls 
  from final_data;

-- Below query finds 8 null values for square footage. 
select sum(case when final_data."squareFootage" is null then 1 else 0 end) count_nulls
     , count(final_data."squareFootage") count_not_nulls 
  from final_data;

-- Below query finds 9645 null values for year built. 
select sum(case when final_data."yearBuilt" is null then 1 else 0 end) count_nulls
     , count(final_data."yearBuilt") count_not_nulls 
  from final_data;
  
-- Below query finds 10,355 null values for lot size. 
select sum(case when final_data."lotSize" is null then 1 else 0 end) count_nulls
     , count(final_data."lotSize") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for property type (nulls filtered out in WHERE statement).
select sum(case when final_data."propertyType" is null then 1 else 0 end) count_nulls
     , count(final_data."propertyType") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for price.
select sum(case when final_data."price" is null then 1 else 0 end) count_nulls
     , count(final_data."price") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for addressLine1.
select sum(case when final_data."addressLine1" is null then 1 else 0 end) count_nulls
     , count(final_data."addressLine1") count_not_nulls 
  from final_data;
  
-- Below query finds 15,423 null values for addressLine2.
select sum(case when final_data."addressLine2" is null then 1 else 0 end) count_nulls
     , count(final_data."addressLine2") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for city.
select sum(case when final_data."city" is null then 1 else 0 end) count_nulls
     , count(final_data."city") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for state.
select sum(case when final_data."state" is null then 1 else 0 end) count_nulls
     , count(final_data."state") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for zipCode.
select sum(case when final_data."zipCode" is null then 1 else 0 end) count_nulls
     , count(final_data."zipCode") count_not_nulls 
  from final_data;  
  
-- Below query finds 0 null values for status.
select sum(case when final_data."status" is null then 1 else 0 end) count_nulls
     , count(final_data."status") count_not_nulls 
  from final_data;

-- Below query finds 0 null values for daysOnMarket.
select sum(case when final_data."daysOnMarket" is null then 1 else 0 end) count_nulls
     , count(final_data."daysOnMarket") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for latitude.
select sum(case when final_data."latitude" is null then 1 else 0 end) count_nulls
     , count(final_data."latitude") count_not_nulls 
  from final_data;
  
-- Below query finds 0 null values for latitude.
select sum(case when final_data."latitude" is null then 1 else 0 end) count_nulls
     , count(final_data."latitude") count_not_nulls 
  from final_data;

DROP TABLE final_data

SELECT DISTINCT ad."propertyType"
from all_data as ad

COPY all_data TO 'C:\samlilburn\Desktop\Bootcamp\Final_Project\all_listings.csv' 
DELIMITER ',' CSV HEADER;

COPY all_data TO 'samlilburn/Desktop/Bootcamp/Final_Project/all_listings.csv' 
WITH (FORMAT CSV, HEADER);

\copy (select * from all_data) 
TO 'samlilburn/Desktop/Bootcamp/Final_Project/all_listings.csv' 
DELIMITER ',' CSV HEADER;
