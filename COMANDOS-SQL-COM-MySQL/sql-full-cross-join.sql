select * from tabela_de_vendedores inner join tabela_de_clientes 
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select v.BAIRRO, v.NOME, c.BAIRRO, c.NOME from tabela_de_vendedores v inner join tabela_de_clientes c
on v.BAIRRO = c.BAIRRO;

## cross join
select v.BAIRRO, v.NOME, c.BAIRRO, c.NOME from tabela_de_vendedores v left join tabela_de_clientes c
on v.BAIRRO = c.BAIRRO;

select v.BAIRRO, v.NOME, c.BAIRRO, c.NOME from tabela_de_vendedores v right join tabela_de_clientes c
on v.BAIRRO = c.BAIRRO;

select tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME
 from tabela_de_vendedores , tabela_de_clientes ;
 
 ##full join
 select v.BAIRRO, v.NOME, c.BAIRRO, c.NOME from tabela_de_vendedores v left join tabela_de_clientes c
on v.BAIRRO = c.BAIRRO
union
select v.BAIRRO, v.NOME, c.BAIRRO, c.NOME from tabela_de_vendedores v right join tabela_de_clientes c
on v.BAIRRO = c.BAIRRO;