USE homework_3_1;

# 5. Найти самый дешевый проект (исходя из cost всех проектов).

UPDATE projects as t1
INNER JOIN (
    SELECT projects.id, sum(developers.salary) as totalSum from developer_project
    INNER JOIN projects ON developer_project.project_id = projects.id
    INNER JOIN developers ON developer_project.developer_id = developers.id
    GROUP BY projects.name
    HAVING sum(developers.salary) is not NULL or sum(developers.salary) < 0
    ) as t2 on t1.id = t2.id
SET t1.cost = t2.totalSum;

#first
SELECT id, name, description, min(cost)
AS theCheapestProject
FROM projects;


# second
SELECT id, name, description, cost
AS theCheapestProject
FROM projects
ORDER BY cost ASC
LIMIT 1;


