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


create table tblBoard(
    seq number primary key,
    subject varchar2(1000) not null,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    id varchar2(50) not null references tblUser(id)
);


create sequence seqBoard;

insert into tblBoard values (sseqBoard.nextval, '게시판입니다.'
                            , '내용입니다.', default,'hong');

select
			b.seq, b.subject, b.regdate,
			b.id as bid,
			u.id as uid,
			u.name
		from tblBoard b
			inner join tblUser u
				on u.id = b.id
					order by b.seq desc;
