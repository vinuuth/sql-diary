Select u.unique_id, e.name from employees e
left join EmployeeUNI u on u.id = e.id 
order by e.name;


select 
eu.unique_id as unique_id, e.name as name
from Employees e left join EmployeeUNI eu on e.id = eu.id
