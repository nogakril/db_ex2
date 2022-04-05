select distinct name, year
from (authors natural join conferences ) T
where institution='Hebrew University of Jerusalem' and subarea='vision' and exists (select name
                                                                                    from (authors natural join conferences) S
                                                                                    where institution='Hebrew University of Jerusalem' and
                                                                                          T.name=S.name and T.year=S.year and S.subarea='ml')
order by name, year;
