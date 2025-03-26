Select st.student_id, st.student_name, s.subject_name, count(e.student_id) as attended_exams from students st
cross join subjects s
left join Examinations e on st.student_id = e.student_id
and s.subject_name = e.subject_name
group by st.student_name,st.student_id, s.subject_name
order by st.student_id, s.subject_name ;
