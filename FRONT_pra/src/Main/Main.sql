create table test.member(
mid varchar(20) not null,
mpassword varchar(20) not null,
mname varchar(20),
memail varchar(30),
mphone varchar(20)
);

create table test.board(
bno int primary key auto_increment,
btitle varchar(30),
bwriter varchar(30),
bdate varchar(30),
bcontentds varchar(1000)
);

create table test.comment(
cno int primary key auto_increment,
ccomment varchar(100),
cdate varchar(30),
cid varchar(20)
);