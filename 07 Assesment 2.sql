select * from cd.facilities;

select name,membercost from cd.facilities;

select name,membercost from cd.facilities
where membercost>0;

select name,membercost from cd.facilities
where membercost<monthlymaintenance/50 and membercost>0;
select name from cd.facilities
where name ilike '%Tennis%';

select * from cd.facilities
where facid=1 or facid=5;

select * from cd.facilities
where facid in (1,5);

select memid,firstname,surname,joindate from cd.members
where joindate between '2012-09-01' and '2013-01-01'
order by joindate
limit 10;

select distinct(surname) from cd.members
order by surname
limit 10;

select joindate as lastmem from cd.members
order by joindate desc
limit 1;

select count(*) from cd.facilities
where guestcost>10;

select sum(slots) as totalslot , facid from cd.bookings
where starttime between '2012-09-01' and '2012-10-01'
group by facid
order by sum(slots);

select facid,sum(slots) from cd.bookings
group by facid
having sum(slots)>1000;

select name,starttime from cd.bookings
inner join cd.facilities
on bookings.facid=facilities.facid
where cd.bookings.facid in (0,1)
and starttime between '2012-09-21' and '2012-09-23'
order by cd.bookings.starttime;

select starttime from cd.members
inner join cd.bookings
on cd.members.memid=cd.bookings.memid
where firstname='David' and surname='Farrell';
