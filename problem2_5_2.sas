*Program name: problem2_5_2.sas stored in /folder/myfolders/
Purpose: The program computes four new variables.

Programmer: Duy Nguyen.
Day Written: 2020-10-16;

data prob2;
	input id $
			height	/*in inches*/
	weight	/*in pounds*/
	sbp		/*systolic BP*/
	dbp		/*diastolic BP*/;
	wtkg=weight * 2.2;
	htcm=height * 2.54;
	avebp=dbp + 1/3 * (sbp - dbp);
	htpolynomibal=2 * height**2 + 1.5 * height**3;
	datalines;
001 68 150 110 70
002 73 240 150 90
003 62 101 120 80
;
run;

title 'Listing of prob2';

proc print data=prob2;
run;