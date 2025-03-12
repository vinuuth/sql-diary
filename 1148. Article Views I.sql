SELECT author_id as id from views
where author_id = viewer_id
group by id
order by id asc ;


select distinct author_id as id 
from Views 
where author_id = viewer_id 
order by author_id asc;
