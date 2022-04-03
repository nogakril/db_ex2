select distinct institution, name
from authors natural join institutions natural join conferences
where country="Israel" and adjustedcount>1 and (area="ai" or subarea="db")
order by institution, name;