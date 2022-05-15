DROP SCHEMA IF EXISTS `homework_3_1`;
CREATE SCHEMA `homework_3_1`;

USE homework_3_1;

CREATE TABLE skills (
id BIGINT NOT NULL AUTO_INCREMENT,
programming_lang VARCHAR(50) NOT NULL,
level VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE developers (
id BIGINT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
age INT,
gender ENUM('male', 'female', 'other'),
PRIMARY KEY(id)
);

CREATE TABLE developer_skill (
developer_id BIGINT NOT NULL,
skill_id BIGINT NOT NULL,
PRIMARY KEY (developer_id, skill_id),
FOREIGN KEY (developer_id) REFERENCES developers(id),
FOREIGN KEY (skill_id) REFERENCES skills(id)
);

CREATE TABLE projects (
id BIGINT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
description VARCHAR(150),
PRIMARY KEY(id)
);

ALTER TABLE projects ADD customer_id BIGINT NOT NULL;
ALTER TABLE projects ADD company_id BIGINT NOT NULL;
ALTER TABLE developers ADD company_id BIGINT NOT NULL;

CREATE TABLE developer_project (
developer_id BIGINT NOT NULL,
project_id BIGINT NOT NULL,
PRIMARY KEY (developer_id, project_id),
FOREIGN KEY (developer_id) REFERENCES developers(id),
FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE customers (
id BIGINT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
business_sphere VARCHAR(150),
PRIMARY KEY(id)
);

CREATE TABLE companies (
id BIGINT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
specialization VARCHAR(150),
PRIMARY KEY (id)
);

ALTER TABLE projects
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers(id);

ALTER TABLE projects
ADD CONSTRAINT company_id_fk
FOREIGN KEY (company_id)
REFERENCES companies(id);



ALTER TABLE developers
ADD CONSTRAINT employer_company_id_fk
FOREIGN KEY (company_id)
REFERENCES companies(id);


CREATE TABLE company_customer (
company_id BIGINT NOT NULL,
customer_id BIGINT NOT NULL,
PRIMARY KEY (company_id, customer_id),
FOREIGN KEY (company_id) REFERENCES companies(id),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);
