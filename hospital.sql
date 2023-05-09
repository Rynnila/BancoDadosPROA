CREATE DATABASE IF NOT EXISTS hospital;

use hospital;

CREATE TABLE IF NOT EXISTS paciente(
	id_paciente INT(8) PRIMARY KEY AUTO_INCREMENT, 
    nome_paciente VARCHAR(300) NOT NULL,
    cpf_paciente varchar(11) NOT NULL,
    dt_nascimentoPaciente DATE NOT NULL,
    telefonePaciente VARCHAR(14) NOT NULL
);

CREATE TABLE IF NOT EXISTS crm(
	id_crm INT(8) PRIMARY KEY auto_increment,
    nr_crm INT(10) NOT NULL,
    dt_emissaoCrm DATE NOT NULL,
    uf_emissorCrm varchar(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS medico(
	id_medico INT(8) PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL,
    nm_medico VARCHAR(300) NOT NULL,
    dt_nascimentoMedico DATE NOT NULL,
    id_crmMedico INT NOT NULL,
    telefoneMedico VARCHAR(14) NOT NULL,
    foreign key (id_crmMedico) references crm(id_crm)
);

 CREATE TABLE IF NOT EXISTS especialidade(
	id_especialidade int(8) PRIMARY KEY AUTO_INCREMENT,
    nm_especialidade VARCHAR(300) NOT NULL,
    abr_especialidade VARCHAR(20) NULL
 );

CREATE TABLE IF NOT EXISTS medicoEspecialidade(
	id_medicoESP int NOT NULL,
    id_especialidadeESP int NOT NULL,
	primary key (id_medicoESP, id_especialidadeESP),
	foreign key (id_medicoESP) references medico(id_medico),
    foreign key (id_especialidadeESP) references especialidade(id_especialidade),
    dt_diplomacao DATE NOT NULL
);
 
 CREATE TABLE IF NOT EXISTS consulta(
	id_consulta INT(8) NOT NULL auto_increment,
	id_medicoCons int not null,
    id_pacienteCons int not null,
    primary key (id_consulta, id_medicoCons, id_pacienteCons),
    foreign key (id_medicoCons) references medico(id_medico),
    foreign key (id_pacienteCons) references paciente(id_paciente),
    dt_realizacaoCons DATE NOT NULL,
    hr_realizacaoCons TIME NOT NULL,
    valor_consulta VARCHAR(10) NOT NULL
);
 
 CREATE TABLE IF NOT EXISTS receita(
	id_receita INT(8) NOT NULL auto_increment,
    id_consultaRec int not null,
    primary key(id_receita, id_consultaRec),
    foreign key(id_consultaRec) references consulta(id_consulta),
    medicamentos VARCHAR(300) NULL,
    qtd_medicamentos VARCHAR(200) NULL,
	instrucoes VARCHAR(500)
 );
 
 CREATE TABLE IF NOT EXISTS convenio(
	id_convenio int(8) NOT NULL AUTO_INCREMENT,
    id_pacienteConv int not null,
    primary key(id_convenio, id_pacienteConv),
    foreign key(id_pacienteConv) references paciente(id_paciente),
    nm_convenio varchar(250) NOT NULL,
    cnpj_convenio int(14) NOT NULL,
    tempo_carencia VARCHAR(100)
 );
 
CREATE TABLE IF NOT EXISTS enfermeiro(
	id_enfermeiro int(8) PRIMARY KEY AUTO_INCREMENT,
    nm_enfermeiro VARCHAR(300) NOT NULL,
    cre int(10) NOT NULL,
    cpf VARCHAR(11) NOT NULL
);
 
 CREATE TABLE IF NOT EXISTS quarto(
	id_quarto int(8) primary key auto_increment,
    nr_quarto int(5)
 );
 
 CREATE TABLE IF NOT EXISTS tipo_quarto(
	id_tipoQuarto int(8) auto_increment,
    id_quartoTipo int not null,
    primary key (id_tipoQuarto, id_quartoTipo),
    foreign key (id_quartoTipo) references quarto(id_quarto),
    ds_quarto VARCHAR(500) NOT NULL,
    valorDiaria VARCHAR(10)
 );
 
 CREATE TABLE IF NOT EXISTS internacao(
	id_pacienteInter int not null,
    id_enfermeiroInter int not null,
    primary key(id_pacienteInter, id_enfermeiroInter),
    foreign key (id_pacienteInter) references paciente(id_paciente),
    foreign key (id_enfermeiroInter) references enfermeiro(id_enfermeiro),
    dt_entradaInter DATE NOT NULL,
    dt_prev_alta DATE NOT NULL,
    dt_alta DATE NULL,
    procedimentoInternacao VARCHAR(500) NOT NULL,
    id_medicoInter int not null,
    id_quartoInter int not null,
	foreign key (id_medicoInter) references medico(id_medico),
    foreign key (id_quartoInter) references quarto(id_quarto)
 );
 
 show tables;