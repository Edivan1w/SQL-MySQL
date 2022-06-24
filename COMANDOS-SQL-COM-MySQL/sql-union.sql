select bairro, nome, 'vendedor' as tipo from tabela_de_vendedores
union 
select BAIRRO, nome, 'cliente' as tipo from tabela_de_clientes;

select bairro, nome, 'vendedor' as tipo from tabela_de_vendedores
union all
select BAIRRO, nome, 'cliente' as tipo from tabela_de_clientes;