libname mydata '/folders/myfolders/mydata';

title 'Descriptive Stats';
proc tabulate data=mydata.college format=comma9.2;
	class gender;
	var gpa;
	table gpa * (n mean min max),
			gender all;
	keylabel all='Total'
			n='Number'
			mean='Average'
			min='Minium'
			max='Maxium';
run;