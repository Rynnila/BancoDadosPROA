use hospital;
show tables;
show create table medico;

select * from medico;
insert into medico values
(null, '5684751125', curdate(), 1, 1);

select * from crm;
insert into crm values (null, '671234242', curdate(),'SP');

select * from telefone;
insert into telefone values
(null, 991675634, 11, "+55");