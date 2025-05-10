SELECT p.project_id, ROUND(AVG(e.experience_years),2) as average_years FROM Project p
LEFT JOIN Employee e  on e.employee_id = p.employee_id
GROUP BY p.project_id
ORDER BY p.project_id;



select p.project_id, round(avg(experience_years),2) as average_years from project p join employee e on p.employee_id=e.employee_id group by p.project_id
