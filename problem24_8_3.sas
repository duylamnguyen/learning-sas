libname mydata '/folders/myfolders/mydata';

proc freq data=mydata.dailyprices noprint;
	tables Symbol / out=Counts (rename=(count = N_Days) drop=percent);
run;

proc sort data=mydata.dailyprices out=dailyprices nodupkey;
	by Symbol;
run;

data dailyprices_merged;
	merge dailyprices Counts;
	by Symbol;
run;

title 'Listing of DailyPrices';
proc print data=dailyprices_merged noobs;
	var Symbol N_Days;
run;