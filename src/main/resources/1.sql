USE homework_3_1;
# 1. Добавить разработчикам поле (salary - зарплата).

ALTER TABLE developers
ADD salary INT NOT NULL;

UPDATE developers SET salary=3500 WHERE id=1;
UPDATE developers SET salary=4000 WHERE id=2;
UPDATE developers SET salary=3200 WHERE id=3;
UPDATE developers SET salary=4100 WHERE id=4;
UPDATE developers SET salary=2500 WHERE id=5;
UPDATE developers SET salary=2100 WHERE id=6;
UPDATE developers SET salary=3800 WHERE id=7;
UPDATE developers SET salary=3600 WHERE id=8;
UPDATE developers SET salary=5500 WHERE id=9;
UPDATE developers SET salary=2000 WHERE id=10;


