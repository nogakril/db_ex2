select name
from (authors natural join conferences) C
where not exsists(select name
                  from (authors natural join conferences) T
                  where T.name="Noam Nisan" and T.area="ai" and not in (select name
                                                                        from (authors natural join conferences) S
                                                                        where S.area="ai" and S.name=C.name))
)
order by name;