libname mydata '/folders/myfolders/mydata';

data inventory;
	set mydata.inventory;
run;

data purchase;
	set mydata.purchase;
run;

proc sort data=inventory;
	by Model;
run;

proc sort data=purchase;
	by Model;
run;

data Pur_Price;
	merge	inventory(in=In_Inventory)
			purchase(in=In_Purchase);
	by Model;
	if In_Inventory and In_Purchase;
	TotalCost = Quantity * Price;
	format TotalCost dollar8.2;
run;

title 'Listing of Pur_Price Dataset';

proc print data=pur_price;
run;