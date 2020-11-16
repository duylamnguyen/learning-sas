libname mydata '/folders/myfolders/mydata';

proc format;
	value $gender 'F' = 'Female'
					'M' = 'Male';
run;

proc sort data=mydata.college out=college;
	by descending scholarship;
run;

title 'Demonstrating Column Percents';
proc tabulate data=college order=data;
	class gender scholarship;
	table (gender all),
			(scholarship all) * (colpctn*f=3.);
	keylabel colpctn='Percent'
				all='Total';
	format gender $gender.;
run;