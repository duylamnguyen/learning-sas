libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.dailyprices out=dailyprices;
	by Symbol Date;
run;

data dailyprices_changed;
	set dailyprices;
	by Symbol;
	if first.Symbol and last.Symbol then delete;
	Diff_Price = Price - lag(Price);
	if not first.Symbol then output;
run;

title 'Listing DailyPrice_Changed';
proc print data=dailyprices_changed noobs;
run;

data first_last;
	set dailyprices;
	by Symbol;
	retain FirstPrice;
	if first.Symbol and last.Symbol then delete;
	if first.Symbol then FirstPrice = Price;
	if last.Symbol then do;
		Diff = Price - FirstPrice;
		output;
	end;
	keep Symbol Price Diff;
run;

title 'Listing of First_Last';
proc print data=first_last noobs;
run;