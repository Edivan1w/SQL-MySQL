use sucos_vendas;
select * from notas_fiscais;

select * from tabela_de_produtos where SABOR = 'Manga'
or TAMANHO = 470;

select * from tabela_de_produtos where SABOR = 'Manga'
and TAMANHO = 470;

select * from tabela_de_produtos where not (SABOR = 'Manga'
or TAMANHO = 470);

select * from tabela_de_produtos where SABOR = 'Manga'
and not(TAMANHO = 470);

select * from tabela_de_produtos where  SABOR in ('Manga', 'Laranja');

select * from tabela_de_clientes where  CIDADE in ('Rio de Janeiro', 'São Paulo')
and (IDADE > 20 AND IDADE < 25);  

select * FROM tabela_de_produtos where SABOR like ('%Maça%');
select * FROM tabela_de_produtos where SABOR like ('Maça%');
select * from tabela_de_clientes where NOME like ('%Mattos'); 
