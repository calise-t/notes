-- Assignments for a Specific Course
SELECT title, due_date FROM assignments
WHERE course_id LIKE 'COMP1234';

-- Earliest Assignment Due Date
SELECT min(due_date) FROM assignments;

-- Latest Assignment Due Date
SELECT max(due_date) FROM assignments;

-- Assignments Due on a Specific Datec
SELECT title, course_id FROM assignments
WHERE due_date LIKE '2024-10-08';

--Find All Assignments Due in October
SELECT title, due_date FROM assignments
WHERE due_date LIKE '2024-10%';

--Find the Most Recent Completed Assignment
SELECT due_date FROM assignments
WHERE status LIKE 'COMPLETED%'
	AND due_date < '2024-11-15'
ORDER BY due_date;