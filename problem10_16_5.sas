libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.inventory;
	by Model;
run;

proc sort data=mydata.newproducts;
	by Model;
run;

data Updated;
	set mydata.inventory mydata.newproducts;
	by Model;
run;

title 'Listing of Updated Dataset';
proc print data=updated;
run;