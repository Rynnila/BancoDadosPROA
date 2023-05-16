USE hospital;

select * from medico;
select * from crm;
select * from especialidade;
select * from medicoEspecialidade;
select * from paciente;
select * from consulta;
select * from paciente;
select * from internacao;
select * from quarto;
select * from tipo_quarto;
select * from internacao;

SELECT * FROM consulta
INNER JOIN paciente ON consulta.id_pacienteCons = paciente.id_paciente
INNER JOIN medico ON consulta.id_medicoCons = medico.id_medico
inner join medicoEspecialidade on medico.id_medico=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
order by consulta.id_consulta;

select * from medicoEspecialidade 
inner join medico on medicoEspecialidade.id_medicoESP=medico.id_medico
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
order by medico.id_medico;

select * from receita
inner join consulta on receita.id_consultaRec=consulta.id_consulta
inner join medicoEspecialidade on consulta.id_medicoCons=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade;


SELECT  consulta.id_consulta, paciente.id_paciente, medico.id_medico, consulta.dt_realizacaoCons FROM consulta
INNER JOIN paciente ON consulta.id_pacienteCons = paciente.id_paciente
INNER JOIN medico ON consulta.id_medicoCons = medico.id_medico
inner join medicoEspecialidade on medico.id_medico=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
order by consulta.id_consulta;

SELECT * FROM consulta
INNER JOIN paciente ON consulta.id_pacienteCons = paciente.id_paciente
INNER JOIN medico ON consulta.id_medicoCons = medico.id_medico
inner join medicoEspecialidade on medico.id_medico=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
order by consulta.id_consulta;


