SELECT A.machine_id, 
ROUND(AVG(B.timestamp - A.timestamp), 3) AS processing_time
FROM Activity A
JOIN Activity B 
ON A.machine_id = B.machine_id 
AND A.process_id = B.process_id 
AND A.activity_type = 'start' 
AND B.activity_type = 'end'
GROUP BY A.machine_id;


SELECT
    machine_id,
    ROUND(SUM(CASE WHEN activity_type = 'start' THEN timestamp *-1 ELSE timestamp END) * 2 / (COUNT(*)), 3) as processing_time
FROM Activity
group by 1
