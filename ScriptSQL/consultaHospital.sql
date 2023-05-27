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

select id_consulta, id_medicoCons, id_pacienteCons, dt_realizacaoCons, hr_realizacaoCons, valor_consulta, id_convenioCons
from consulta where dt_realizacaoCons>=DATE('2020-01-01');
select avg(valor_consulta) as media_consultas2020 from consulta where dt_realizacaoCons>=DATE('2020-01-01');

select * from internacao where dt_alta>dt_prev_alta;

select * from receita
inner join consulta on receita.id_consultaRec=consulta.id_consulta 
order by id_consulta asc limit 1;

select * from consulta
where id_convenioCons is null 
order by valor_consulta desc limit 1;

select * from consulta 
where id_convenioCons is null 
order by valor_consulta asc limit 1;

select internacao.id_internacao, internacao.dt_entradaInter, internacao.dt_prev_alta, 
internacao.dt_alta, internacao.procedimentoInternacao, paciente.nome_paciente,
cpf_paciente, dt_nascimentoPaciente, telefonePaciente, nm_enfermeiro, cre, nm_medico,
telefoneMedico, medico.cpf, id_quarto, ds_quarto, valorDiaria,
tipo_quarto.valorDiaria*(DATEDIFF(dt_alta, dt_entradaInter)) AS preco_total_por_dia
from internacao 
inner join quarto on internacao.id_quartoInter=quarto.id_quarto
inner join paciente on internacao.id_pacienteInter=paciente.id_paciente
inner join medico on internacao.id_medicoInter=medico.id_medico
inner join enfermeiro on internacao.id_enfermeiroInter=enfermeiro.id_enfermeiro
inner join tipo_quarto on tipo_quarto.id_quartoTipo=quarto.id_quarto;

select dt_entradaInter, dt_alta, procedimentoInternacao, nr_quarto, ds_quarto from internacao
inner join quarto on internacao.id_quartoInter=quarto.id_quarto
inner join tipo_quarto on tipo_quarto.id_quartoTipo=quarto.id_quarto 
where ds_quarto="Apartamento";

select paciente.nome_paciente, consulta.dt_realizacaoCons, consulta.hr_realizacaoCons, especialidade.nm_especialidade,
TIMESTAMPDIFF(YEAR, dt_nascimentoPaciente, CURRENT_DATE) AS idade_paciente,
TIMESTAMPDIFF(YEAR, dt_nascimentoPaciente, dt_realizacaoCons) AS idade_diaConsulta
from consulta
inner join paciente on consulta.id_pacienteCons=paciente.id_paciente
inner join medico on consulta.id_medicoCons=medico.id_medico
inner join medicoEspecialidade on medico.id_medico=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
where TIMESTAMPDIFF(YEAR, dt_nascimentoPaciente, dt_realizacaoCons)<18 
and especialidade.nm_especialidade<>"Pediatria" 
order by consulta.dt_realizacaoCons;

select nome_paciente, nm_medico, dt_entradaInter, procedimentoInternacao, nm_especialidade
from internacao
inner join paciente on internacao.id_pacienteInter=paciente.id_paciente
inner join medico on internacao.id_medicoInter=medico.id_medico
inner join medicoEspecialidade on medico.id_medico=medicoEspecialidade.id_medicoESP
inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade
where nm_especialidade="Gastrenterologia";
