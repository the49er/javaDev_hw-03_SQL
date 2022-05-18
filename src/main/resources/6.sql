USE homework_3_1;

# 6. Вычислить среднюю ЗП программистов в самом дешевом проекте.

SELECT projects.id, projects.name, projects.description,
projects.cost, avg(developers.salary) as AVG_SalaryInTheCheapestProject
FROM developer_project
INNER JOIN developers ON developer_project.developer_id = developers.id
INNER JOIN projects on developer_project.project_id = projects.id
GROUP BY projects.cost
ORDER BY projects.cost ASC
LIMIT 1;
