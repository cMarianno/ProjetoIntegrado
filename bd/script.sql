/*   SCRIPT FOR CREATE TABLE ON HOURMED PROJECT   */

create table hm_idoso(
email varchar2(30),
senha varchar2(20),
sexo varchar2(10),
peso float(5),
altura float(5),
nascimento date,
idade integer,
cod_idoso varchar2(10),
nome_idoso varchar2(40),
celular_idoso varchar2(12),
primary key (cod_idoso)
);

create table hm_consulta(
local_consulta varchar2(60),
data_hora timestamp,
id_consulta varchar2(10),
cod_idoso varchar2(10),
primary key (id_consulta)
);

create table hm_medicamento(
nome varchar2(40),
cor varchar2(20),
id_medic varchar2(10),
cod_idoso varchar2(10),
laboratorio_fornecedor varchar2(40),
primary key (id_medic),
foreign key (cod_idoso) references hm_idoso
);

create table hm_tratamento(
id_tratamento varchar2(10),
id_medic varchar2(10),
respota_alerta integer,
cod_idoso varchar2(10),
periodicidade timestamp,
primary key (id_tratamento),
foreign key (id_medic) references hm_medicamento
);

create table hm_responsavel(
email varchar2(30),
idade integer,
sexo varchar2(10),
senha varchar2(20),
altura float(5),
nascimento date,
peso float(5),
cod_idoso varchar2(10),
cod_responsavel varchar2(10),
nome_resp varchar2(40),
celular_resp varchar2(12),
primary key (cod_responsavel),
foreign key (cod_idoso) references hm_idoso
);

create table hm_med_por_idoso(
id_medic varchar2(10), 
id_tratamento varchar2(10),
cod_idoso varchar2(10),
foreign key (id_medic) references hm_medicamento,
foreign key (id_tratamento) references hm_tratamento,
foreign key (cod_idoso) references hm_idoso
);
