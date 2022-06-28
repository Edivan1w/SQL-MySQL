select concat(nome, ' (',cpf, ')') as resultado from tabela_de_clientes;

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM tabela_de_clientes

#datas
select curdate();
select current_time();
select current_date();
select current_timestamp();
select current_user();
select day(current_timestamp());
select dayname(current_timestamp());
select monthname(current_timestamp());
select datediff(current_timestamp(), '1992-11-15') as tempo_em_dias;

SELECT DISTINCT DATA_VENDA FROM NOTAS_FISCAIS;

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM NOTAS_FISCAIS;

select distinct nome, timestampdiff(year, data_de_nascimento, curdate()) as idade_atual from tabela_de_clientes;

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA)