LOAD DATA 
INFILE "image_list3.csv"
INTO TABLE images_bfile 
FIELDS TERMINATED BY ','
(
	image_descr CHAR(100),
	image_date DATE "dd-mon-yyyy",
	FileName FILLER CHAR(100),
	image_file BFILE(CONSTANT "BFILE_DIR", FileName)
)
