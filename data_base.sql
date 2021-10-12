drop table if exists cliente, pedido, item_do_pedido, produto;

create table cliente (
    id serial not null primary key,
    nome varchar(30) not null,
    sobrenome varchar(50) not null
);

create table pedido (
    id serial not null primary key,
    data date not null,
    id_cliente int not null,
    foreign key(id_cliente) references cliente(id)
);

create table produto (
    id serial not null primary key,
    descricao varchar(45) not null
);

create table item_do_pedido (
    id_pedido int not null,
    id_produto int not null,
    qtdade int not null,
    foreign key(id_pedido) references pedido(id),
    foreign key(id_produto) references produto(id)
);

