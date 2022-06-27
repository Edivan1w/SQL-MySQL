use sistema_escola;

insert into usuario(
email, nome, pass_word)values(
'joao@gmail.com', 'Joao da silva', '$2a$12$D48XR8SaURqvf6lOaxmrpOs5r8B8GWV9eSznUl4gZfzV9qo7BlKYy');
select * from usuario_secretario;

select * from usuario;

update usuario set pass_word = '$2a$10$Pj6pJ6FvlbdZcZRK6E/FO..FoVsVHbZOloWhXoQ1O47tdWN5jHEXC'
where id = 1;
select * from usuario;

create table usuario_role (
id bigint not null auto_increment,
usuario_id bigint not null,
role_id bigint not null,
primary key (id),
foreign key (usuario_id) references usuario (id),
foreign key (role_id) references `role` (id)
);

insert into `role` (
nome
) values(
'LEITURA_ESCRITA');
select * from `role`;

insert into usuario_role (usuario_id, role_id) values (1, 1);
select * from usuario_role;
