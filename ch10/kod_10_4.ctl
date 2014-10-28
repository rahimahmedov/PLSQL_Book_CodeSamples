LOAD DATA
INFILE 'image_list2.csv'
INTO TABLE images_bf
FIELDS TERMINATED BY ','
(
	imagename CHAR(20),
	imagedate DATE "dd-mon-yyyy",
	image 	  LOBFILE (CONSTANT 'P1140098.JPG') TERMINATED BY EOF
)
