select year, name
from authors A
where conference="focs" and year >= 2000 and year <= 2020 and adjustedcount >= all (select B.adjustedcount
                                                    from authors B
                                                    where conference="focs" and B.year=A.year
                                                    )
order by year, name;
