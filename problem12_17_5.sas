libname mydata '/folders/myfolders/mydata';

data Names_And_More;
	set mydata.names_and_more (keep=Mixed);
	Integer = input(scan(Mixed, 1, ' /'), 8.);
	Numerator = input(scan(Mixed, 2, ' /'), 8.);
	Denominator = input(scan(Mixed, 3, ' /'), 8.);
	if missing(Numerator) then Price = Integer;
	else Price = Integer + Numerator / Denominator;
	Price = round(Price, .001);
run;

title 'Listing of Names_And_More Dataset';
proc print data=Names_And_More;
run;