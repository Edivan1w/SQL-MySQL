use sistema_escola;
select * from disciplinas;

update disciplinas set primeiro_bimestre = 8.0
where nome_disciplina = 'PORTUGUES' AND aluno_id = 4;

SELECT * FROM disciplinas WHERE nome_disciplina = 'FISICA' and aluno_id = 4;

USE SUCOS;

alter table tb_produto add primary key (PRODUTO);

ALTER table tb_cliente add primary key (CPF);

alter table tb_cliente add column (DATA_NASCIMENTO date);

insert into tb_cliente(
CPF,
NOME, ENDERECO1, ENDERECO2, BAIRRO,
CIDADE, ESTADO, CEP, IDADE, SEXO,
LIMITE_CREDITO, VOLUME_COMPRA,
PRIMEIRA_COMPRA, DATA_NASCIMENTO
) values (
'00388934505', 
'João da Silva', 
'Rua projetada A número 10', 
'', 
'Vila Roman', 
'CARATINGA', 
'Amazonas', 
'2222222', 
30, 
'M', 
10000.00, 
2000, 
0, 
'1989-10-05'
);

SELECT * FROM tb_cliente;

alter table tabela_de_vendedores add column (DATA_ADMISSAO date);

select * FROM tabela_de_vendedores; 

alter table tabela_de_vendedores add column (ESTA_FERIAS bit);

insert into tabela_de_vendedores(
MATRICOLA, NOME, PERCENTUAL_COMISSAO,
DATA_ADMISSAO, ESTA_FERIAS
) values (
'00235', 'Márcio Almeida Silva', 0.08, 
'2014-08-15', 0
);

insert into tabela_de_vendedores(
MATRICOLA, NOME, PERCENTUAL_COMISSAO,
DATA_ADMISSAO, ESTA_FERIAS
) values (
'00236', 'Cláudia Morais', 0.08, 
'2013-09-13', 1
);

insert into tabela_de_vendedores(
MATRICOLA, NOME, PERCENTUAL_COMISSAO,
DATA_ADMISSAO, ESTA_FERIAS
) values (
'00237', 'Roberta Martins', 0.11, 
'2017-03-17', 1
);

insert into tabela_de_vendedores(
MATRICOLA, NOME, PERCENTUAL_COMISSAO,
DATA_ADMISSAO, ESTA_FERIAS
) values (
'00238', 'Péricles Alves', 0.11, 
'2016-08-21', 0
);

update tabela_de_vendedores set DATA_ADMISSAO = '2015-07-23', ESTA_FERIAS = 0
where MATRICOLA = '00235';

update tabela_de_vendedores SET DATA_ADMISSAO = '2020-02-28', ESTA_FERIAS = 0
where MATRICOLA = '00236';

select * FROM tabela_de_vendedores;