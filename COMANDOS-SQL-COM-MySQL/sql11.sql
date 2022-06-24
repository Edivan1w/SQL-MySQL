use sucos_vendas;
select * from itens_notas_fiscais;
select CODIGO_DO_PRODUTO,quantidade from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' ORDER BY QUANTIDADE DESC;
SELECT max(QUANTIDADE) AS MAIOR_QUANTIDADE FROM ITENS_NOTAS_FISCAIS WHERE  CODIGO_DO_PRODUTO = '1101035';
select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and quantidade = 99;

select estado, sum(LIMITE_DE_CREDITO)  as limite_credito from tabela_de_clientes 
group by estado having limite_credito > 900000;

select embalagem, max(preco_de_lista) as valor_maximo,
min(preco_de_lista) as preo_minimo from tabela_de_produtos group by embalagem;

select cpf, count(*) from notas_fiscais
 where year(DATA_VENDA) = 2016  group by cpf having count(*) > 2000;

SELECT CPF, COUNT(*) FROM notas_fiscais WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF HAVING COUNT(*) > 2000;
  
  select NOME_DO_PRODUTO, PRECO_DE_LISTA,
    case 
      when PRECO_DE_LISTA >= 12 then 'produto caro'
      when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA <= 12 then 'produto em conta'
      else 'produto barato'
    end as status_preco
    from tabela_de_produtos;

 select embalagem,
    case 
      when PRECO_DE_LISTA >= 12 then 'produto caro'
      when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA <= 12 then 'produto em conta'
      else 'produto barato'
    end as status_preco, avg(preco_de_lista) as preco_medio
    from tabela_de_produtos
    group by embalagem,
     case 
      when PRECO_DE_LISTA >= 12 then 'produto caro'
      when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA <= 12 then 'produto em conta'
      else 'produto barato'
      end
    order by embalagem;
    
    select * from tabela_de_clientes;
select nome, DATA_DE_NASCIMENTO, 
  case
    when year(DATA_DE_NASCIMENTO) < 1990 then 'velho'
    when year(DATA_DE_NASCIMENTO) >= 1990 and year(DATA_DE_NASCIMENTO) <= 1995  then 'joven'
    else 'criança' end as status_idade
    from tabela_de_clientes
    group by nome;