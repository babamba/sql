-- alter table

alter table book add(pubs varchar2(120));

alter table book modify(pubs varchar2(200));

alter table book rename column pubs to publishing;

alter table book drop column publishing;

--alter table book set unused(author);

select*from book;

--drop table
--drop table book;

--truncate
--truncate table book;

-- comment
comment on table book is'북정보를 저장하는 테이블'; 


select * from book;