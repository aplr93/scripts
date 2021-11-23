drop table if exists customer, orders, order_item, product;

create table customer (
    id serial not null primary key,
    cpf varchar(11) not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null
);

create table orders (
    id serial not null primary key,
    date date not null,
    customer_id int not null,
    foreign key(customer_id) references customer(id)
);

create table product (
    id serial not null primary key,
    description varchar(50) not null
);

create table order_item (
    id serial not null primary key,
    order_id int not null,
    product_id int not null,
    quantity int not null,
    foreign key(order_id) references orders(id),
    foreign key(product_id) references product(id)
);

