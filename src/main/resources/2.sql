USE homework_3_1;
# Найти самый дорогой проект (исходя из salary всех разработчиков).


sele
select * from developers
left join companies on companies.id = developers.company_id;

select count(company_id)
from companies
left join developers on developers.company_id=companies.id
group by company_id
order by count(company_id) desc;


select id, name, description
from projects
where id in (
    select project_id
    from developer_project
    group by project_id
    having count(developer_id) in (
        select count(developer_id)
        from developer_project
        group by project_id
        order by count(project_id) desc
        limit 1
    )
);

select * from developer_project;

select companies.*, sum(salary)
from developers, companies
where developers.company_id=companies.id
group by name
order by  sum(salary) desc;



