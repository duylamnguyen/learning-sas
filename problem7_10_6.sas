libname mydata '/folders/myfolders/mydata';

proc print data=mydata.sales;
	where (region eq 'North' and quantity lt 60) or customer eq "Pet's are Us";
run;