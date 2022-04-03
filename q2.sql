select distinct institution, name
from authors natural join institutions
where country="Israel"
order by institution, name;