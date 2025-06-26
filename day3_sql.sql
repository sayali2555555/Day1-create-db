--Performing operations on previosly created table interns
SELECT * FROM interns
SELECT domain , email FROM interns;

-- using 'WHERE' and 'AND'
SELECT * FROM interns
WHERE domain = 'Cybersecurity' AND phone IS NOT NULL;


-- using 'OR'
SELECT * FROM interns
WHERE domain = 'Cybersecurity' OR domain = 'Web Development';


--using 'LIKE'
SELECT * FROM interns
WHERE email LIKE '%@gmail.com';

--using 'BETWEEN'
SELECT * FROM  interns
where join_date BETWEEN '2025-06-01' AND '2025-06-07';


-- using 'ORDER BY'
SELECT * FROM interns
ORDER BY name ASC;
