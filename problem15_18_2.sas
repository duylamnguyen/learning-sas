libname mydata '/folders/myfolders/mydata';

title 'Statistics from BLOOD by Gender';
proc report data=mydata.blood;
	column gender wbc rbc;
	define gender / group;
	define wbc / analysis mean 'Average of WBC' format=5.;
	define rbc / analysis mean 'Average of RBC' format=4.2;
run;