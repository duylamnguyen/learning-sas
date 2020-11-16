libname mydata '/folders/myfolders/mydata';

title 'Subjects in Gender and Age Order';
proc report data=mydata.bloodpressure;
	column gender age sbp dbp;
	define gender / order;
	define age / order;
	define sbp / display 'Systolic Blood Pressure';
	define dbp / display 'Diastolic Blood Pressure';
run;