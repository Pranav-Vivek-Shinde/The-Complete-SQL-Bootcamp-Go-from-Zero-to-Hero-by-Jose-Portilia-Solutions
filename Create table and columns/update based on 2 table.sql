update account_job
set hire_date=account.created_on
from account 
where account_job.user_id=account.user_id;