-- Calise Tam

-- Concatenate Course Name and Semester
select concat(course_name, ' - ', semester) FRom courses

-- Find Courses with Labs on Fridays
select course_id, course_name, lab_time from courses where substring(lab_time, 1,3) like 'Fri'

-- Upcoming Assignments
select * from assignments where due_date > date()

-- Count Assignments by Status
select status, count(*) from assignments
Group by status

-- Longest Course Name
SELECT course_name from courses
order by length(course_name) desc

-- Uppercase Course Names:
SELECT upper(course_name) from courses

-- Assignments Due in September
SELECT title from assignments
where substring(due_date,6,2) like '09'

-- Assignments with Missing Due Dates
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT course_id, title from assignments where due_date is NULL