libname mydata '/folders/myfolders/mydata';

title 'Problem 5';
data _NULL_;
	file print;
	set mydata.bicycles end=lastrec;
	TotalUnits + units;
	Sum_of_Sales + TotalSales;
	if lastrec then
		put "----------------------------------" /
			"Total Units Sold is " TotalUnits comma10. /
			"Sales Total is" Sum_of_Sales dollar10.0;
run;