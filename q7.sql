select year, name
from authors A
where conference='focs'
      and institution='Hebrew University of Jerusalem'
      and year >= 2000
      and year <= 2020
      and A.count >= all(select B.count
                         from authors B
                         where conference='focs'
                               and institution='Hebrew University of Jerusalem'
                               and B.year=A.year)
order by year, name;
