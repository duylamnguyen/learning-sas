libname mydata '/folders/myfolders/mydata';

data Differences;
	set mydata.stocks;
	Diff_Price = dif(Price);
run;

title 'Plot of Daily Price Differences';
proc sgplot data=Differences;
	series x=Date y=Diff_Price;
run;