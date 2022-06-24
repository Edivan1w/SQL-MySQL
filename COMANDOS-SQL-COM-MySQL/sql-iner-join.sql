select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores V 
inner join notas_fiscais N 
on V.MATRICULA = N.MATRICULA;

select V.MATRICULA, V.NOME, count(*) from tabela_de_vendedores V
inner join notas_fiscais N 
on V.MATRICULA = N.MATRICULA
group by  V.MATRICULA, V.NOME;

select V.MATRICULA, V.NOME from tabela_de_vendedores V
inner join notas_fiscais N 
on V.MATRICULA = 00235
group by  V.MATRICULA, V.NOME;

select V.MATRICULA from tabela_de_vendedores V
inner join notas_fiscais N 
on V.MATRICULA = 00235
group by  V.MATRICULA, V.NOME;

select V.MATRICULA from tabela_de_vendedores V
inner join notas_fiscais N 
on V.NOME = 'Roberta Martins'
group by  V.MATRICULA, V.NOME;