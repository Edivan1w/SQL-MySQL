use sucos;
update tb_produto set EMBALAGEM = 'LATA', PRECO_LISTA = 2.46
where PRODUTO = '544931';

update tb_produto set EMBALAGEM = 'GARRAFA'
where PRODUTO = '1078680';

select * from tb_produto;

update tabela_de_vendedores set PERCENTUAL_COMISSAO = 0.11
where MATRICOLA = '00236';

update tabela_de_vendedores set NOME = 'José Geraldo da Fonseca Junior'
where MATRICOLA = '00233';

select * from tabela_de_vendedores;

delete from tabela_de_vendedores where MATRICOLA = '00233';
