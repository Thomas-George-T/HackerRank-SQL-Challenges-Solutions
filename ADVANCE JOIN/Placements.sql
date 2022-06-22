Select S.Name
from Students S inner join Friends f
on S.ID = f.ID
inner join Packages p
on f.ID = p.ID
inner join Packages fp
on f.Friend_ID = fp.ID
where fp.Salary > p.Salary
order by fp.Salary;
