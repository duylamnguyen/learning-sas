libname learn '/folders/myfolders/Problems';

data learn.perm;
	infile datalines dlm='09'x;
	input	id:		$3.
			gender:	$1.
			dob:	mmddyy10.
			height
			weight;
	label	dob = 'Date of Birth'
			height = 'Height in inches'
			weight = 'Weight in pounds';
	format	dob date9.;
	datalines;
	001	M	10/21/1946	68	150
	002	F	5/26/1950	63	122
	003	M	5/11/1981	72	174
	004	M	7/4/1983	70	128
	005	F	12/25/2005	30	40
	;
run;

title 'Listing of data set Perm';

proc contents data=learn.perm;
run;