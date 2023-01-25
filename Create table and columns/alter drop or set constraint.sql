alter table new_info
alter column people drop not null;
insert into new_info(title)
values('Some new title');