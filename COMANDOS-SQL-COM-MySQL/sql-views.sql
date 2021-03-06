SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

SELECT * FROM VW_MAIORES_EMBALAGENS;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
VW_MAIORES_EMBALAGENS X WHERE X.PRECO_MAXIMO >= 10;

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) as faturamento_total 
FROM notas_fiscais NF
inner join itens_notas_fiscais INF on NF.NUMERO = INF.numero
where year(data_venda) = 2016
group by year(data_venda);

select * from notas_fiscais;
select * from itens_notas_fiscais;

