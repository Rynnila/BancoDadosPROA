# **BancoDadosPROA**
Repositório com os diagramas e conceitos trabalhados nas aulas de banco de dados do Instituto PROA.

## Índice 

* [Diagrama1 - Hospital](#Diagrama1---Hospital)
* [Diagrama2 - Hospital Pt.2](#diagrama2---hospital-pt2)
* [Diagrama3 - Hospital Lógico](#diagrama3---hospital-lógico)
* [Codigo1 - Hospital Fisico](#codigo1---hospital-físico)

### Diagrama1 - Hospital:

 Um pequeno hospital local busca desenvolver um novo sistema que atenda melhor às suas necessidades. Atualmente, parte da operação ainda se apoia em planilhas e arquivos antigos, mas espera-se que esses dados sejam transferidos para o novo sistema assim que ele estiver funcional. Neste momento, é necessário analisar com cuidado as necessidades desse cliente e sugerir uma estrutura de banco de dados adequada por meio de um Diagrama Entidade-Relacionamento. O diagrama seguindo as necessidades está abaixo. 

![image](https://github.com/Rynnila/BancoDadosPROA/blob/main/DiagramaHospital.png)

### Diagrama2 - Hospital Pt.2:

 Após a primeira versão do projeto de banco de dados para o sistema hospitalar, notou-se a necessidade de expansão das funcionalidades, incluindo alguns requisitos essenciais a essa versão do software. As funcionalidades em questão são para o controle na internação de pacientes. Será necessário expandir o Modelo ER desenvolvido e montar o banco de dados, criando as tabelas para o início dos testes. As atualizações foram na criação das entidades de quartos, internação e enfermeiro.
 
![image](https://github.com/Rynnila/BancoDadosPROA/blob/main/DiagramaHospitalPt2.png)

### Diagrama3 - Hospital Lógico:

 Depois de refazer o modelo conceitual do hospital, dessa vez foi feita a modelagem lógica desse mesmo hospital, ela contém algumas tabelas comuns à bancos de dados como a tabela telefone, e ela também já possui como ficarão as chaves estrangeiras do banco de dados fisico. A cardinalidade foi feita utilizando os famosos pés de galinha!
 
![image](https://github.com/Rynnila/BancoDadosPROA/blob/main/DiagramaLogicoHospital.png)

### Codigo1 - Hospital Físico
Finalmente chagamos ao modelo físico do Hospital, a linguagem usada é o SQL, e a ferramenta de gerenciamento de banco de dados usada foi o MySQL Workbench. *Seja Bem vindo ao banco de dados do hospital! <3*

```SQL
CREATE DATABASE IF NOT EXISTS HOSPITAL;
USE HOSPITAL;
```


