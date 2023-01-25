update account
set last_login=current_timestamp
returning email,created_on,last_login;