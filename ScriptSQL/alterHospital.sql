use hospital;

alter table medico add atividade varchar(12);

update medico set atividade="em_atividade";

update medico set atividade="inativo" where id_medico=1;

update medico set atividade="inativo" where id_medico=2;

select * from medico;

