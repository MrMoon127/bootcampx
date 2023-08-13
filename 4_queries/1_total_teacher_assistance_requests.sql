SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;