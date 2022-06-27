use SUCOS;
select * FROM tbcliente;
select * from tbcliente where DATA_NASCIMENTO = '1990-09-01'; 

select * FROM tabela_de_vendedores where year(DATA_ADMISSAO) > 2016;

select * FROM tabela_de_vendedores where (ESTA_FERIAS = 1 AND year(DATA_ADMISSAO) < 2016) OR (PERCENTUAL_COMISSAO = 0.11);
select * FROM tabela_de_vendedores;