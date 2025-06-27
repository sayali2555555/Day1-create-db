--USING AGGREGATE FUNCTIONS
SELECT SUM(exp_years) AS total_experience
FROM interns;


SELECT AVG(exp_years) AS avg_exp
FROM interns

SELECT 
    MAX(exp_years) AS max_experience,
    MIN(exp_years) AS min_experience
FROM interns;


SELECT COUNT(*) AS total_interns
FROM interns;


-- USING GROUP BY
SELECT domain, SUM(exp_years) AS total_experience
FROM interns
GROUP BY domain;


-- USING HAVING
SELECT domain, SUM(exp_years) AS total_experience
FROM interns
GROUP BY domain
HAVING SUM(exp_years) >= 3;