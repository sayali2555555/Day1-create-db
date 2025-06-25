CREATE TABLE interns (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    domain VARCHAR(50)
);

-- insertion

INSERT INTO interns (id, name, email, phone, domain)
VALUES (4, 'Ankit Mehra', 'ankit@example.com', '9123456789', 'UI/UX Design');


INSERT INTO interns (id, name, email, phone, domain)
VALUES (5, 'Divya Patel', 'divya@example.com', NULL, 'Cybersecurity');


INSERT INTO interns (id, name, email, phone)
VALUES (6, 'Rahul Dande', 'rahul@example.com', '9087654321');


INSERT INTO interns (id, name, email, phone, domain)
VALUES (7, 'Neha Sharma', 'neha@example.com', NULL, DEFAULT);



ALTER TABLE interns 
ALTER COLUMN domain SET DEFAULT 'General';


INSERT INTO interns (id, name, email, phone)
VALUES (3, 'Pooja Kadam', 'pooja@example.com', '1234567890');


--updation
UPDATE interns
SET phone = '9999999999'
WHERE id = 1;


--deletion

DELETE FROM interns
WHERE id = 2;
