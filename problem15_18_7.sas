libname mydata '/folders/myfolders/mydata';

title 'Mean Cholesterol by Gender and Blood Type';
proc report data=mydata.blood;
	column gender bloodtype chol;
	define gender / group;
	define bloodtype / group;
	define chol / analysis mean 'Mean Cholesterol' format=8.1;
run;