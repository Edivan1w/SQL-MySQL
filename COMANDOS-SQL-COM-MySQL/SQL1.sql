select * from produtos;

create database SUCO;

drop database SUCO;
drop database loja_sucos;

create database SUCOS;

create table TB_CLIENTE(
CPF varchar(11),
NOME varchar(100),
ENDERECO1 varchar(150),
ENDERECO2 varchar(150),
BAIRRO varchar(50),
CIDADE varchar(50),
ESTADO varchar(50),
CEP varchar(8),
IDADE smallint(8),
SEXO varchar(1),
LIMITE_CREDITO float,
VOLUME_COMPRA float,
PRIMEIRA_COMPRA BIT(1)
);

create table TABELA_DE_VENDEDORES(
MATRICOLA varchar(5),
NOME varchar(100),
PERCENTUAL_COMISSAO float
);

create table TB_PRODUTO(
PRODUTO varchar(20),
NOME varchar(150),
EMBALAGEM varchar(50),
TAMANHO varchar(50),
SABOR varchar(50),
PRECO_LISTA float
);

insert into tb_produto(
PRODUTO,
NOME,
EMBALAGEM,
TAMANHO,
SABOR,
PRECO_LISTA
) values(
'1040107',
'Light - 350 ml - Melancia',
'Lata',
'350 ml',
'Melancia',
4.56
);

insert into tabela_de_vendedores(
MATRICOLA,
NOME,
PERCENTUAL_COMISSAO
) values(
'00233',
'João Geraldo da Fonceca',
0.10
);

INSERT INTO tb_produto (
PRODUTO, 
NOME, 
EMBALAGEM, 
TAMANHO, 
SABOR, 
PRECO_LISTA) VALUES (
'1037797', 
'Clean - 2 Litros - Laranja', 
'PET',
 '2 Litros', 
 'Laranja', 
 16.01);

INSERT INTO tb_produto (
PRODUTO, 
NOME, 
EMBALAGEM, 
TAMANHO, 
SABOR, 
PRECO_LISTA) VALUES (
'1000889', 
'Sabor da Montanha - 700 ml - Uva', 
'Garrafa', 
'700 ml', 
'Uva',
 6.31);

INSERT INTO tb_produto (
PRODUTO, 
NOME, 
EMBALAGEM, 
TAMANHO, 
SABOR, 
PRECO_LISTA) VALUES (
'1004327', 
'Videira do Campo - 1,5 Litros - Melancia',
 'PET',
 '1,5 Litros',
 'Melancia',
 19.51);

SELECT * FROM tb_produto;

insert into tabela_de_vendedores(
MATRICOLA,
NOME,
PERCENTUAL_COMISSAO
)values(
'00235',
'Márcio Almeida Silva',
'0.80'
);

insert into tabela_de_vendedores(
MATRICOLA,
NOME,
PERCENTUAL_COMISSAO
)values(
'00236',
'Cláudia Morais',
'0.80'
);

select * from tabela_de_vendedores;

INSERT INTO tb_produto (
PRODUTO, 
NOME, 
EMBALAGEM, 
TAMANHO, 
SABOR,
PRECO_LISTA) VALUES
('544931', 
'Frescor do Verão - 350 ml - Limão', 
'PET', 
'350 ml',
'Limão',
3.20);

INSERT INTO tb_produto (
PRODUTO, 
NOME, 
EMBALAGEM, 
TAMANHO, 
SABOR,
PRECO_LISTA) VALUES
('1078680', 
'Frescor do Verão - 470 ml - Manga', 
'Lata', 
'470 ml',
'Manga',
5.18);

