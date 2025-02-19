use db1;

SELECT COUNT(*) AS row_count
    FROM baltimore;

    SELECT
        SUM(annualSalary) AS total_salary,
        AVG(annualSalary) AS average_salary,
        MIN(annualSalary) AS min_salary,
        MAX(annualSalary) AS max_salary
    FROM baltimore;
        SELECT
        SUM(grossPay) AS total_grossPay,
        AVG(grossPay) AS average_grossPay,
        MIN(grossPay) AS min_grossPay,
        MAX(grossPay) AS max_grossPay
    FROM baltimore;
    SELECT
        jobClass,
        COUNT(DISTINCT jobClass) AS distinct_job_classes
    FROM baltimore
    GROUP BY jobClass;
     SELECT
        agencyName,
        COUNT(DISTINCT agencyName) AS distinct_agencyName
    FROM baltimore
    GROUP BY jobClass;
    

SELECT
SUM(CASE WHEN firstName IS NULL THEN 1 ELSE 0 END) AS null_firstName,
SUM(CASE WHEN middleInitial IS NULL THEN 1 ELSE 0 END) AS null_middleInitial
FROM baltimore;