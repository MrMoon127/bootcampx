SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assignment_submissions on students.id = student_id
GROUP BY cohort
ORDER BY count(assignment_submissions) DESC;