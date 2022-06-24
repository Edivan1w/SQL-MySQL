select * from itens_notas_fiscais;
select * from notas_fiscais;
select  year(data_venda), sum(quantidade * preco) as faturamento from notas_fiscais NF 
inner join itens_notas_fiscais INF on NF.numero = INF.NUMERO
group by year(DATA_VENDA);

select distinct  a.cpf, a.nome, b.cpf from tabela_de_clientes a
inner join notas_fiscais b on a.cpf = b.cpf;

select distinct  a.cpf, a.nome, b.cpf from tabela_de_clientes a
left join notas_fiscais b on a.cpf = b.cpf;

select distinct  a.cpf, a.nome, b.cpf from tabela_de_clientes a
right join notas_fiscais b on a.cpf = b.cpf;

select distinct  a.cpf, a.nome, b.cpf from tabela_de_clientes a
left join notas_fiscais b on a.cpf = b.cpf where b.cpf is null;