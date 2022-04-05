select distinct name
from (authors natural join conferences) C
where not exists(select name
                  from (authors natural join conferences) T
                  where T.name='Noam Nisan' and T.area='ai' and T.conference not in (select conference
                                                                                     from (authors natural join conferences) S
                                                                                     where S.area='ai' and S.name=C.name))
order by name;
