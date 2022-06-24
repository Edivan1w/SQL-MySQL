use SUCOS_VENDAS;

select distinct EMBALAGEM, TAMANHO from tabela_de_produtos;
select distinct BAIRRO FROM tabela_de_clientes where CIDADE = 'Rio de janeiro'; 
select * FROM tabela_de_produtos limit 2,3;
select * FROM notas_fiscais where DATA_VENDA ='2017-01-01' limit 10;

select * from tabela_de_produtos order by PRECO_DE_LISTA;
select * from tabela_de_produtos order by PRECO_DE_LISTA desc;
select * from tabela_de_produtos;

select * from tabela_de_produtos where NOME_DO_PRODUTO = ('Linha Refrescante - 1 Litro - Morango/Limão');
select * from tabela_de_produtos where NOME_DO_PRODUTO = ('Linha Refrescante - 1 Litro - Morango/Limão') order by PRECO_DE_LISTA desc ; 

select * from tabela_de_clientes;
select ESTADO, sum(LIMITE_DE_CREDITO) as LIMITE_DE_CREDIDO_ESTADO from tabela_de_clientes group by estado;

select EMBALAGEM, max(PRECO_DE_LISTA) AS MAIOR_PRECO_LISTA FROM tabela_de_produtos group by EMBALAGEM;
select EMBALAGEM, count(*) AS CONTADOR from tabela_de_produtos group by EMBALAGEM;

select BAIRRO, sum(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by BAIRRO;
select estado, cidade, bairro, sum(LIMITE_DE_CREDITO) as limite from tabela_de_clientes group by estado;

