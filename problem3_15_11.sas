*
Program Name:
Purpose:
Programmer:
Date Written:
;

data employee;
	infile '/folders/myfolders/employee.csv' dsd;
	input	id:			$3.
			name:		$20.
			depart:		$8.
			datehire:	mmddyy10.
			salary:		dollar8.;
	format	datehire	date9.
			salary		dollar8.;
run;

title 'Employee';

proc print data=employee;
run;