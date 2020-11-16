data dates;
	input	@1	subj		$3.
			@4	dob			mmddyy8.
			@12	visit_date	date9.;
	format	dob visit_date date9.;
datalines;
0011021195011Nov2006
0020102195525May2005
0031225200525Dec2006
;
run;

title 'Listing of Dates';

proc print data=dates noobs;
	id subj;
run;