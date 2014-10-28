LOAD DATA
INFILE 'image_list.csv'
INTO TABLE images_bf
FIELDS TERMINATED BY ','
(
	imagename CHAR(20),
	imagedate DATE "dd-mon-yyyy",
	imagefile FILLER CHAR(100),
	image 	  LOBFILE (imagefile) TERMINATED BY EOF
)
