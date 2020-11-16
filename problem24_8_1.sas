libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.dailyprices out=dailyprices;
	by Symbol Date;
run;

data Last;
	set dailyprices;
	by Symbol;
	put Symbol= Date= Price= First.Symbol= Last.Symbol=;
	if Last.Symbol then output;
run;

title 'Listing of Data Set DailyPrices';
proc print data=Last;
run;
