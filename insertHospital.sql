use hospital;
show tables;
show create table medico;

select * from medico;
insert into medico values
(null, '5684751125', 'Newton Nakamura', curdate(), 1, '+5520925999'),
(null, '5561488139', 'Camila Maria Barbosa', curdate(), 2, '+551134767254'),
(null, '3654127003', 'Juliana Mossini Nicoliello', curdate(), 3, '+551150838222'),
(null, '7854544774', 'Sergio Belczak', curdate(), 4, '+551138925642'),
(null, '8547851126', 'Andressa Amorim', curdate(), 5, '+551150524527'),

(null, '0089682132', '', curdate(), 5, '+5599945871256'),
(null, '7458126948', '', curdate(), 6, '+5511995143677'),
(null, '8544545153', '', curdate(), 7, '+5515985475412'),
(null, '9987455444', '', curdate(), 9, '+5511996541274'),
(null, '7754841688', '', curdate(), 10, '+5548965444214');

select * from crm;
insert into crm values 
(null, '47742', curdate(),'SP'),
(null, '168120', curdate(),'SP'),
(null, '101092', curdate(),'SP'),
(null, '118282 ', curdate(),'SP'),
(null, '178899', curdate(),'SP'),

(null, '985478521', curdate(),'SP'),
(null, '145217478', curdate(),'SP'),
(null, '102478521', curdate(),'CE'),
(null, '021455248', curdate(),'SP'),
(null, '004578512', curdate(),'SC');

select * from especialidade;
insert into especialidade values
(null, 'Pediatria', 'PED'),
(null, 'Clínica Geral', null),
(null, 'Gastrenterologia', 'gastroenterol'),
(null, 'Dermatologia', 'dermato'),
(null, 'Ginecologista','gineco'),
(null, 'Mastologia', null),
(null, 'Oftalmologia', 'oftalmo'),
(null, 'Radioterapia', null),
(null, 'Homeopatia', null),
(null, 'Cardiologia', null);

select * from medicoEspecialidade;
INSERT INTO medicoEspecialidade values
(1, 1,DATE '1983-12-20'),
(2, 1, DATE '2017-12-09'),
(2, 3, DATE '2019-12-20'),
(3, 4, DATE '2007-12-20'),
(3, 2, DATE '2003-12-20'),
(4, 10, DATE '2008-12-20'),
(5, 5, DATE '2017-12-20'),
(5, 6, DATE '2019-12-20'),

(8, 1,curdate()),
(9, 7,curdate()),
(10, 9,curdate()),
(10, 8,curdate()),
(5, 2,curdate());

INSERT INTO  paciente values
(null, 'Guilherme Papaléo', '9984454561', curdate(), '+5511998544210'),
(null, 'Guilherme Maranho', '5874120046', curdate(), '+5512585455785'),
(null, 'Amanda Silva Santos', '0468245996', curdate(), '+5515985551054'),
(null, 'Jaqueline Guimaraes', '5874598446', curdate(), '+5578995624788'),
(null, 'Aline Barros', '8547845461', curdate(), '+5511958769532'),
(null, 'Laura Gomes', '8956565633', curdate(), '+5512785445542'),
(null, 'Vitória Barberi', '0054446529', curdate(), '+5511854565665'),
(null, 'Kaique Souza', '9658745512', curdate(), '+5511998545666'),
(null, 'Robson Cleiton', '0025410368', curdate(), '+5511995745652'),
(null, 'Eduardo Pestana', '9545544105', curdate(), '+5515922548781'),
(null, 'Jefferson Professor', '9854411003', curdate(), '+5511895844550'),
(null, 'Houdini', '9856451054', curdate(), '+5511965442059'),
(null, 'Pablo Gomes', '8122204548', curdate(), '+5511620445445'),
(null, 'Yasmin Santana', '9852411054', curdate(), '+5511698885089'),
(null, 'Alex Pandrea', '8547412305', curdate(), '+5511998445120');

insert into consulta values
(null, 'id_medico', 'id_paciente', 'dt', "hr", 'valor')
(null, 1, 14, DATE '2015-01-02', '11:20', 'R$00,00'), //yasmin Ginecologista (grávida)
(null, 2, 10, DATE '2016-02-02','12:30', 'R$00,00'), //Eduardo Cardiologia
(null, 6, 1, DATE '2017-03-02','14:00', 'R$00,00'), //GUILHERME Papaléo RADIOLOGIA(QUEBROU A PERNA)
(null, 7, 3, DATE '2018-04-02','15:25', 'R$00,00'), //AMANDA pediatra
(null, 3, 10, DATE '2019-05-02','16:20', 'R$00,00'), //eduardo dermato
(null, 5, 11, DATE '2020-06-02','10:50', 'R$00,00'), //jeff Gastrenterologia (gastrite) 
(null, 1, 5, DATE '2021-07-02','11:00', 'R$00,00'), //aline Mastologia 
(null, 7, 11, DATE '2015-08-02','14:00', 'R$00,00'), //jeff oftalmo
(null, 4, 2, DATE '2016-09-02','10:00', 'R$00,00'), //Guilherme maranhao clinico geral
(null, 4, 4, DATE '2017-10-02','12:20', 'R$00,00'), //jaqueline clinico geral
(null, 3, 4, DATE '2018-11-02','09:00', 'R$00,00'), //jaqueline Dermatologia (insolação)
(null, 10, 5, DATE '2019-12-02','8:30', 'R$00,00'), //aline barros Homeopatia (ansiedade)
(null, 1, 6, DATE '2020-12-02','15:20', 'R$00,00'), //Laura mastologia
(null, 8, 7, DATE '2021-01-02','08:00', 'R$00,00'), //vitoria pediatria
(null, 9, 8, DATE '2015-02-02','12:00', 'R$00,00'), //Kaique oftalmo
(null, 5, 9, DATE '2016-03-02','13:00', 'R$00,00'), //robson clinico
(null, 2, 12, DATE '2017-04-02','09:00', 'R$00,00'), //CardiologiaHoudini
(null, 5, 13, DATE '2018-05-02','16:20', 'R$00,00'), //Pablo clinico
(null, 10, 15, DATE '2019-06-02','17:00', 'R$00,00'), //alex Homeopatia (ansioso)
(null, 6, 10, DATE '2022-01-01','10:20', 'R$00,00'); //eduardo radiologia

select * from medicoEspecialidade inner join medico on medicoEspecialidade.id_medicoESP=medico.id_medico;
select * from medicoEspecialidade inner join especialidade on medicoEspecialidade.id_especialidadeESP=especialidade.id_especialidade;