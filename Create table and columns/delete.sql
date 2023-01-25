delete from job
where job_name='astronaut'
returning job_id,job_name;