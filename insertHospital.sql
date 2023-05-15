use hospital;

insert into crm values 
(null, '47742', DATE '1984-02-21','SP'),
(null, '168120', DATE '2014-11-11','SP'),
(null, '101092', DATE '2000-12-19','SP'),
(null, '118282 ', DATE '2005-02-15','SP'),
(null, '178899', DATE '2016-03-08','SP'),
(null, '116106', DATE '2004-12-22','SP'),
(null, '123776 ', DATE '2006-07-04','SP'),
(null, '109135 ', DATE '2003-01-14','SP'),
(null, '156128', DATE '2012-12-11','SP'),
(null, '166420', DATE '2018-03-06','SP');

insert into medico values
(null, '5684751125', 'Newton Nakamura', curdate(), 1, '+5520925999'),
(null, '5561488139', 'Camila Maria Barbosa', curdate(), 2, '+551134767254'),
(null, '3654127003', 'Juliana Mossini Nicoliello', curdate(), 3, '+551150838222'),
(null, '7854544774', 'Sergio Belczak', curdate(), 4, '+551138925642'),
(null, '8547851126', 'Andressa Amorim', curdate(), 5, '+551150524527'),
(null, '0089682132', 'Polo Eduardo San Martin Gonzales', curdate(), 6, '+551127378044'),
(null, '7458126948', 'João Vitorino', curdate(), 7, '+5511950702845'),
(null, '8544545153', 'Thiago Giansante Abud', curdate(), 8, '+551156886100'),
(null, '9987455444', 'Heli Samuel Pinto Souza', curdate(), 9, '+551121518709'),
(null, '7754841688', 'Janaina Petenuci', curdate(), 10, '+551155498740');

insert into especialidade values
(null, 'Pediatria', 'PED'),
(null, 'Clínica Geral', null),
(null, 'Gastrenterologia', 'gastroenterol'),
(null, 'Dermatologia', 'dermato'),
(null, 'Ginecologista','gineco'),
(null, 'Mastologia', null),
(null, 'Oftalmologia', 'oftalmo'),
(null, 'Radioterapia', 'radio'),
(null, 'Neurologia', 'neuro'),
(null, 'Cardiologia', 'cardio');

INSERT INTO medicoEspecialidade values
(1, 1,DATE '1983-12-20'),
(2, 1, DATE '2017-12-09'),
(2, 3, DATE '2019-12-20'),
(3, 4, DATE '2007-12-20'),
(3, 2, DATE '2003-12-20'),
(4, 10, DATE '2008-12-20'),
(5, 5, DATE '2017-12-20'),
(5, 6, DATE '2019-12-20'),
(6, 7, DATE '2007-12-20'),
(7, 9, DATE '2016-12-20'),
(8, 8, DATE '2010-12-20'),
(9, 2, DATE '2018-12-10'),
(10, 2, DATE '2018-12-10');

select * from medico;
select * from crm;
select * from especialidade;
select * from medicoEspecialidade;

select * from paciente;
INSERT INTO  paciente values
(null, 'MARIA LUCIA FRANCISCO AROFO', '23110501848', DATE '1942-03-12', '+552121050000'),
(null, 'EMERSON MENA', '88594432968', DATE '1973-05-12', '+554535244382'),
(null, 'MARIA JOSE SILVA OLIVEIRA', '02796198472', DATE '1930-06-07', '+5535998186140'),
(null, 'CARLOS ALEXANDRE FIGUEIRA JORGE', '07005503724', DATE '1973-10-09', '+5521978862189'),
(null, 'REGINALDO FERREIRA LIMA', '15624504845', DATE '1975/02/17', '+5516993043521'),
(null, 'MARIA JOSE SILVA LEITE', '04815607427', DATE '1982-03-09', '+5581992505153'),
(null, 'ELIANA ANTONIA SILVA SANTOS', '44590210487', DATE '1965-11-09', '+5587988152415'),
(null, 'JENIFER NAIANY RAMOS DE JESUS', '06249030522', DATE '1994-11-25', '+551123754683'),
(null, 'VANILCE VIANA OLIVEIRA', '93253095215', DATE '2004-09-14', '+5593991636079'),
(null, 'VINICIUS RODRIGUES LAGES', '16309082663', DATE '2000-06-16', '+5514997341488'),
(null, 'EMILLY ROSA ALTHMAN', '49030243856', DATE '2000-08-30', '+5516997452898'),
(null, 'HERNAN ALMEIDA DE OLIVEIRA', '00485694298', DATE '1989-05-06', '+552984241470'),
(null, 'CINTIA FERREIRA DA SILVA', '16983932889', DATE '1975-11-16', '+5517991171099'),
(null, 'JOAO PEREIRA DE FARIA', '30906954649', DATE '1933-05-17', '+5516997452898'),
(null, 'ANTONIO JULIO SILVESTRE FILHO', '05027616791', DATE '1927-06-05', '+5514997106127');

insert into convenio values 
(null, 1, 'Unimed', '128192', '60 dias'),
(null, 5, 'Plamol', '19271209', '30 dias'),
(null, 10, 'Amil', '901725417', '60 dias'),
(null, 15, 'Porto Seguro', '8192192', '30 dias');

insert into consulta values
(null, 1, 9, DATE '2015-01-02', '11:20', 'R$250,00', null), 
(null, 2, 10, DATE '2016-02-02','12:30', 'R$150,50', 3), 
(null, 3, 3, DATE '2017-03-02','14:00', 'R$320,00', null), 
(null, 4, 7, DATE '2018-04-02','15:25', 'R$300,00', null), 
(null, 5, 11, DATE '2019-05-02','16:20', 'R$109,00', null), 
(null, 6, 4, DATE '2020-06-02','10:50', 'R$200,00', null), 
(null, 7, 5, DATE '2021-07-02','11:00', 'R$150,00', 2), 
(null, 8, 8, DATE '2015-08-02','14:00', 'R$500,00', null), 
(null, 9, 2, DATE '2016-09-02','10:00', 'R$60,00', null), 
(null, 10, 11, DATE '2017-10-02','12:20', 'R$90,00', null), 
(null, 1, 10, DATE '2011-01-02', '11:20', 'R$120,00', 3), 
(null, 2, 1, DATE '2016-02-02','12:30', 'R$122,50', 1), 
(null, 3, 6, DATE '2017-03-02','14:00', 'R$280,00', null), 
(null, 4, 9, DATE '2018-04-02','15:25', 'R$170,00', null), 
(null, 5, 13, DATE '2019-05-02','16:20', 'R$60,00', null), 
(null, 6, 12, DATE '2020-06-02','10:50', 'R$140,00', null), 
(null, 7, 14, DATE '2021-07-02','11:00', 'R$189,00', null), 
(null, 8, 14, DATE '2015-08-02','14:00', 'R$500,00', null), 
(null, 9, 2, DATE '2016-09-02','10:00', 'R$200,00', null), 
(null, 10, 15, DATE '2017-10-02','12:20', 'R$90,00', 4);

insert into receita values 
(null, 3, 'Minoxidil, Lavitan, Cortisona', '2 caixas de cada', 'De 12 em horas: 1 comprimido de Minoxidil; Uma cápsula de Lavitan por dia; 7,5 mg de Cortisona por dia'),
(null, 5, 'Buscofem, dipirona', 'Buscofem: 2 caixas de 20 cápsulas; Dipirona: 1 caixa', 'A cada 6 horas tomar um comprimido de Buscofem até o fim do período menstrual. Em caso de dor, tomar um comprimido de dipirona'),
(null, 19, 'Dorflex, Cimegripe, Loratadina', '1 caixa de cada', 'Dipirona monoidratada: quando sentir enxaqueca ou tiver febre; Cimegripe: 1 cápsula a cada 4 horas; Loratadina: 1 cápsula por dia -- Por 4 dias'),
(null, 2, 'Ambroxol, Lavitan Kids', '1 caixa de Ambroxol e Lavitam 1 caixa para cada 20 dias', 'Ambroxol: 5ml 3x por dia; Lavitan Kids: 1 comprimido por dia (tomar no mínimo por 3 meses e marcar retorno)'),
(null, 12, 'Omeprazol, Dramin', '2 caixa de cada', 'Omeprazol e dramin: ingerir antes das refeições por 3 dias'),
(null, 3, 'Sulfato de neomicina + bacitracina zíncica (Nebacetin); Acetato de clostebol + sulfato de neomicina', '1 caixa de cada', 'Aplicar a pomada de 2 a 5 vezes por dia na queimadura, até que a ferida cicatrize.'),
(null, 6, 'Luteína', '1 caixa com 30 cápsulas', 'Luteína: 2x ao dia por 15 dias'),
(null, 2, 'Floratil, Imosec', '1 caixa de cada', 'Floratil: 1 comprimido a cada 12 horas (de preferência em jejum) por 5 dias; Imosec: 2 comprimidos por dia + 1 a cada evacuação liquida até que as fezes voltem ao normal.'),
(null, 10, 'Acetilcisteína Xarope, Prednisona', '1 caixa de cada', 'Acetilcisteína: de 2 a 3 soluções por dia; Prednisona: 1 comprimido por dia. Realizar inalações com soro fisiológico antes de dormir.'),
(null, 9, 'Ibuprofeno, Dipirona, Paracetamol', '2 caixas de Ibuprofeno e Paracetamol + 1 caixa de Dipirona', '2 comprimidos de Ibuprofeno 2x por dia; Dipirona sempre que sentir dor; 1 paracetamol a cada 6 horas.');

insert into enfermeiro values
(null, 'Roseni Sena', 87212, '17885421146'),
(null, 'Madre Marie Domineuc', 85475, '36547851125'),
(null, 'Ethel Parsons', 65874, '45217896632'),
(null, 'Laís Netto', 37623, '09457613240'),
(null, 'Rachel S. Haddock Lobo', 85472, '98745210732'),
(null, 'Edith Magalhães', 01204, '79654120321'),
(null, 'Maria Rosa Sousa Pinheiro', 87452, '85712036541'),
(null, 'Olga Verderese', 85471, '98541237012'),
(null, 'Ana Néri', 85471, '21485479965'),
(null, 'Dona Ivone Lara', 56214, '96587452211');

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

select * from consulta;
select * from paciente;

select * from internacao;

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

select * from quarto;
insert into quarto values
(null, 1),
(null, 2),
(null, 3),
(null, 4),
(null, 5),
(null, 6);

select * from tipo_quarto;
insert into tipo_quarto values
(null, 1, 'Quarto pós-operatório, feito para pessoas que acabaram de sair de uma cirurgia', 'R$150,00'),
(null, 2, 'Quarto para internação breve, o pacinte ficará no máximo 3 dias nesse quarto', 'R$60,00'),
(null, 3, 'Quarto com modificações para PCD', 'R$100,00'),
(null, 4, 'Apartamento', 'R$500,00'),
(null, 5, 'Quarto duplo', 'R$50,00'),
(null, 6, 'Enfermaria', 'R$80,00');

select * from internacao;
insert into internacao values
(null, 7, 1, DATE '2018-04-03', DATE'2018-04-18', DATE '2018-04-15', 'Paciente internado após uma cirurgia no coração.', 4, 1),
(null, 9, 2, DATE '2015-01-02', DATE '2015-01-04', DATE '2015-01-04', 'Paciente internado com desidratação, a criança apresenta quadros comuns', 1, 2),
(null, 9, 2, DATE '2018-04-02', DATE '2018-04-19', DATE '2018-04-15', 'Paciente com deficiência locomotiva internado após cirurgia simples no coração', 4, 3),
(null, 2, 3, DATE '2016-09-02', DATE '2016-09-03', DATE '2016-09-04', 'Paciente internado por coma alcoólico, ele apresentou dores no dia de alta previsto e ficou mais um dia no hospital', 9, 2),
(null, 8, 6, DATE '2015-08-02', DATE '2015-09-01', DATE '2015-09-01', 'Paciente internada para realização de exames após ter uma fratura exposta', 8, 3),
(null, 14, 4, DATE '2021-07-02', DATE '2021-07-22', DATE '2021-07-20', 'Paciente internado após uma cirurgia na cabeça.', 7, 1),
(null, 14, 5, DATE '2015-08-02', DATE '2015-08-02', DATE '2015-08-02', 'Paciente internado após passar mal na sala de raio-x', 8, 2);
