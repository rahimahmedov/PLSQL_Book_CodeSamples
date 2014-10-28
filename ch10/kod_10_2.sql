set feedback on
set echo on
create table images_bf (
	imageName varchar2(1000),
 	imageDate DATE,
	image BLOB)
lob(image) store as basicfile (
	tablespace example
	disable storage in row
	chunk 4096
	nocache
	logging );
