# Change data type

CAST(column_name AS integer) 

# Change data type method 2

column_name::integer


# Interval function

SELECT companies.permalink,
       companies.founded_at_clean,
       companies.founded_at_clean::timestamp +
         INTERVAL '1 week' AS plus_one_week
  FROM tutorial.crunchbase_companies_clean_date companies
 WHERE founded_at_clean IS NOT NULL
 
 
 # NOW() function
 
 SELECT companies.permalink,
       companies.founded_at_clean,
       NOW() - companies.founded_at_clean::timestamp AS founded_time_ago
  FROM tutorial.crunchbase_companies_clean_date companies
 WHERE founded_at_clean IS NOT NULL
 
 
 # Cleaning strings with LEFT, RIGHT, and LENGTH
 
SELECT incidnt_num,
       date,
       LEFT(date, 10) AS cleaned_date,
       RIGHT(date, LENGTH(date) - 11) AS cleaned_time
  FROM tutorial.sf_crime_incidents_2014_01
  
  
  # TRIM data, remove characters from the beginning and end of a string
  
  SELECT location,
       TRIM(both '()' FROM location)
  FROM tutorial.sf_crime_incidents_2014_01
  
  # POSITION function, allows you to specify a substring, then returns a numberical value equal to a character number (counting from left) where that substring first appears in the target string.
  
  SELECT incidnt_num,
       descript,
       POSITION('A' IN descript) AS a_position
  FROM tutorial.sf_crime_incidents_2014_01
  
  
  
  
  
  
