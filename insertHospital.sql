use hospital;
show tables;
show create table medico;

select * from medico;
insert into medico values
(null, '5684751125', curdate(), 1, 1, '+5511991675634'),
(null, '8547851126', curdate(), 2, 2, '+5522994521478'),
(null, '5561488139', curdate(), 3, 3, '+5511997458125'),
(null, '3654127003', curdate(), 4, 4, '+5548994785426'),
(null, '0089682132', curdate(), 5, 5, '+5599945871256'),
(null, '7458126948', curdate(), 6, 6, '+5511995143677'),
(null, '8544545153', curdate(), 7, 7, '+5515985475412'),
(null, '7854544774', curdate(), 8, 8, '+5585997451458'),
(null, '9987455444', curdate(), 9, 9, '+5511996541274'),
(null, '7754841688', curdate(), 10, 10, '+5548965444214');

select * from crm;
insert into crm values 
(null, '671234242', curdate(),'SP'),
(null, '154789621', curdate(),'RJ'),
(null, '145214789', curdate(),'SP'),
(null, '365214789', curdate(),'SC'),
(null, '120458754', curdate(),'MA'),
(null, '985478521', curdate(),'SP'),
(null, '145217478', curdate(),'SP'),
(null, '102478521', curdate(),'CE'),
(null, '021455248', curdate(),'SP'),
(null, '004578512', curdate(),'SC');


insert into especialidade values
(null, 'Pediatria', 'PED'),
(null, 'Clínica Geral'),
(null, 'Gastrenterologia', 'gastroenterol'),
(null, 'Dermatologia', 'dermato'),
(null, 'Ginecologista','gineco'),
(null, 'Mastologia'),
(null, 'Oftalmologia', 'oftalmo'),
(null, 'Radioterapia'),
(null, 'Homeopatia'),
(null, 'Cardiologia');

INSERT INTO medicoEspecialidade values
(1, 5,curdate()),
(1, 6,curdate()),
(2, 10,curdate()),
(3, 4,curdate()),
(4, 2,curdate()),
(5, 3,curdate()),
(6, 8,curdate()),
(7, 1,curdate()),
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


