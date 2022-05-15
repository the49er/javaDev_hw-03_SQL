
INSERT INTO companies (name, specialization)
VALUES
('GameSoft', 'Game Software'),
('iNet Security', 'Web Security'),
('Global Link', 'Networks'),
('Soft Group', 'Enterprise Solutions');

INSERT INTO developers (name, age, gender, company_id)
VALUES
('Vitaly', 25, 'male', 1),
('Irina', 31, 'female', 2),
('Sabrina', 38, 'other', 3),
('Yehor', 42, 'male', 4),
('Sergiy', 29, 'male', 4),
('Olena', 19, 'other', 1),
('Oksana', 42, 'female', 2),
('John', 43, 'male', 1),
('Dmytro', 35, 'male', 3),
('Helga', 22, 'female', 2)
;

INSERT INTO customers (name, business_sphere)
VALUES
('Peri', 'Building Constructions'),
('Mail Express', 'Logistic Company'),
('MoneyBank', 'Banking'),
('BetStore', 'Gambling');

INSERT INTO company_customer (company_id, customer_id)
VALUES
(1, 4),
(2, 3),
(3, 1),
(4, 2);

INSERT INTO projects (name, description, customer_id, company_id)
VALUES
('CRM', 'Customer Relationship Management', 1, 4),
('ERP', 'Enterprise Resource Planning', 2, 3),
('SCM', 'Software Configuration Management', 3, 2),
('HMC', 'Human Capital Management', 4, 1);

INSERT INTO developer_project (developer_id, project_id)
VALUES
(4, 1),
(3, 2),
(2, 3),
(1, 4),
(5, 1),
(6, 2),
(7, 4),
(8, 2),
(9, 3),
(10, 4);

INSERT INTO skills (programming_lang, level)
VALUES
('C#', 'Junior'),
('C#', 'Middle'),
('C#', 'Senior'),
('C++', 'Junior'),
('C++', 'Middle'),
('C++', 'Senior'),
('Java', 'Junior'),
('Java', 'Middle'),
('Java', 'Senior'),
('JS', 'Junior'),
('JS', 'Middle'),
('JS', 'Senior');

INSERT INTO developer_skill (developer_id, skill_id)
VALUES
(3, 3),
(3, 6),
(4, 2),
(4, 5),
(1, 1),
(1, 4),
(2, 7),
(2, 12),
(5, 12),
(5, 9),
(6, 11),
(7, 6),
(7, 2),
(8, 10),
(9, 9),
(10, 10);
