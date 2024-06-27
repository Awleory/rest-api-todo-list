drop table if exists users;
create table users(
    id serial primary key,
    name varchar(255) not null,
    username varchar(255) not null,
    password_hash varchar(255) not null
);

drop table if exists todo_list;
create table todo_list(
    id serial primary key,
    title varchar(255) not null,
    description varchar(255) not null
);

drop table if exists todo_item;
create table todo_item(
    id serial primary key,
    title varchar(255) not null,
    description varchar(255) not null,
    done boolean
);

drop table if exists users_lists;
create table users_lists(
    id serial primary key,
    user_id int references users(id) on delete CASCADE,
    list_id int references todo_list(id) on delete CASCADE
);

drop table if exists list_items;
create table list_items(
    id serial primary key,
    list_id int references todo_list(id) on delete cascade,
    item_id int references todo_item(id) on delete cascade
);