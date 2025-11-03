-- project > script.sql

create table tblUser (

    id varchar2(50) primary key,
    name varchar2(50) not null,
    pw varchar2(100) not null,
    email varchar2(100) not null,
    age number(3) not null,
    regdate date default sysdate not null,
    auth varchar2(50) not null --ROLE_MEMBER, ROLE_ADMIN
);

insert into tblUser values ('hong', '홍길동','1111','hong@gmail.com', 20, default, 'ROLE_MEMBER');

commit;

delete from tblUser where id='hong';


select * from tblUser;
