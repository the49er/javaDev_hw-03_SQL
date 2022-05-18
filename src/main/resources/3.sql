use homework_3_1;

# 3. Вычислить общую ЗП только Java разработчиков.

select skills.programming_lang, sum(developers.salary) as JavaTotalSalaries
from developer_skill
inner join developers on developer_skill.developer_id = developers.id
inner join skills on developer_skill.skill_id = skills.id
where programming_lang='Java';

# Salary for all programming languages
# group by programming_lang
# having count(programming_lang);



