filename mydata '/folders/myfolders/mydata';

data purchase;
	set mydata.purchase;
run;

data inventory;
	set mydata.inventory;
run;

options mergenoby= warn;

data Unsorted;
	merge purchase inventory;
run;