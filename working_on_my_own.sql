create database toyin_bank;

use toyin_bank;

create table current_account_holders (
	first_name char(15) not null,
    middle_name char(15) not null,
    last_name char(15) not null,
    user_id varchar(20) not null,
    age integer not null,
    sex char(8) not null,
    address varchar (40) not null,
    geo_political_zone char(15) not null,
    state char(12) not null,
    constraint current_account_holders_pk primary key(user_id)
    );
    

