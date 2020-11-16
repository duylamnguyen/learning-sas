libname mydata '/folders/myfolders/mydata';

data smooth;
	set mydata.stocks;
	price1 = lag(price);
	price2 = lag2(price);
	average = mean(price, price1, price2);
run;

title 'Plot of Price and Moving Average';
proc sgplot data=smooth;
	series x=date y=price;
	series x=date y=average;
run;