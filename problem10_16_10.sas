libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.inventory out=inventory;
	by Model;
run;

proc sort data=mydata.purchase out=purchase;
	by Model;
run;

data Not_Purchased;
	merge	inventory(in=In_Inventory)
			purchase(in=In_Purchase);
	by Model;
	if not In_Purchase;
	file print;
	put Model= In_Inventory= In_Purchase=;
run;

title 'Listing of Not In Purchased';
proc print data=not_purchased (keep=Model Price);
run;