USE homework_3_1;

# 4. Добавить поле (cost - стоимость) в таблицу Projects .

ALTER TABLE projects
ADD cost INT NOT NULL;

DESCRIBE projects;
