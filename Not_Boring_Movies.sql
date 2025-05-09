
Select id, movie, description, rating from Cinema 
where mod(id,2) <> 0
And description <> "boring"
order by rating desc;


SELECT id, movie, description, rating
FROM Cinema
WHERE description != 'boring' AND id % 2 != 0
ORDER BY rating DESC
