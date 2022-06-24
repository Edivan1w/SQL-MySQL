USE SUCOS;

select * FROM tbcliente;

select NOME, CPF FROM tbcliente;

select NOME AS NOME_CLENTE, CPF AS CPF_CLENTE FROM tbcliente limit 3;

select NOME AS NOME_VENDEDOR, MATRICOLA AS MATRICOLA_VENDEDOR FROM tabela_de_vendedores;

select NOME, CIDADE, ESTADO FROM tbcliente where CIDADE = 'Rio de Janeiro';

select * FROM tbproduto WHERE SABOR = 'Citrus';

update tbproduto set SABOR = 'Citrus'
where SABOR = 'Limao';

select * from tabela_de_vendedores where NOME = 'Claudia Morais';

select * from tbcliente;

select * from tbcliente where IDADE = 22;
select * from tbcliente where IDADE > 22;
select * from tbcliente where IDADE <> 22;
select * from tbcliente where IDADE >= 22;

select *from tbproduto;
select * from tbproduto where PRECO_LISTA between 16.007 and 16.009;

select * from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.1;
update tabela_de_vendedores set PERCENTUAL_COMISSAO = 0.08
where MATRICOLA = '00235';

