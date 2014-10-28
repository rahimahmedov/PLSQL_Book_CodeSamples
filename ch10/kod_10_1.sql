set feedback on
set echo on
create table images (
	imageName varchar2(1000),
 	imageDate DATE,
	image BLOB
);

insert into images values ('test', sysdate, empty_blob());
commit;

column imageName format a10
column imageDate format a14
column image 	 format a10

select * from images where image is null;

select * from images where image is not null;	
