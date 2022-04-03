select distinct name, year
from (authors natural join conferences ) T
where subarea="vision" and exists (select name
                                    from (authors natural join conferences) S
                                    where T.year=S.year and S.subarea="ml")
order by name, year;
