use homework_3_1;
# Найти самый дорогой проект (исходя из salary всех разработчиков).

SELECT projects.id, projects.name, projects.description, sum(developers.salary) as projectCost
FROM developer_project
INNER JOIN projects ON developer_project.project_id = projects.id
INNER JOIN developers ON developer_project.developer_id = developers.id
group by projects.name
order by projectCost desc
limit 4

