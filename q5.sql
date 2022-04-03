select name
from authors natural join conferences
where area="systems" and year<1990
except
select name
from authors natural join conferences
where area<>"systems" or year>=1990
order by name;