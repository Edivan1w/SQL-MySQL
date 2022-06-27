select BAIRRO from tabela_de_vendedores;
select *  from tabela_de_clientes where BAIRRO in ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');
##jeito recomendado
select *  from tabela_de_clientes where BAIRRO in (select BAIRRO from tabela_de_vendedores);

select embalagem, max(preco_de_lista) from tabela_de_produtos group by EMBALAGEM;
select embalagem, count(*) from tabela_de_produtos group by EMBALAGEM;

select X.embalagem, X.preco_maximo from
(select embalagem, max(preco_de_lista) as preco_maximo from tabela_de_produtos group by EMBALAGEM) X 
where X.preco_maximo > 10;