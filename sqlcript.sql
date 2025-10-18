CREATE DATABASE insurance_project;
USE insurance_project;
SELECT *
FROM costs
LIMIT 10;
#query2
SELECT
    smoker,
    COUNT(*) AS number_of_customers,
    AVG(charges) AS average_charge
FROM
    costs
GROUP BY
    smoker;
#query3
SELECT
    region,
    COUNT(*) AS number_of_customers,
    AVG(charges) AS average_charge
FROM
    costs
GROUP BY
    region
ORDER BY
    average_charge DESC;
SELECT * FROM costs;
