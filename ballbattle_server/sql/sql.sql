create database rank;
use rank;
create table rank(
    _id int(4) unsigned not null auto_increment,
    name varchar(100) default NULL,
    level int(4) not null default 0,
    publish_date timestamp,
    primary key(_id)
);

create table play(
    _id int(4) unsigned not null auto_increment,
    guid varchar(200) default NULL,
    type varchar(100) default NULL,
    publish_date timestamp,
    primary key(_id)
);
