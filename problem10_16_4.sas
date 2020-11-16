libname mydata '/folders/myfolders/mydata';

data Mountain_USA Road_France;
	set mydata.bicycles;
	if Country eq 'USA' and Model eq 'Mountain Bike' then output Mountain_USA;
	else if Country eq 'France' and Model eq 'Road Bike' then output Road_France;
run;

title 'Listing of Mountain_USA Dataset';
proc print data=Mountain_usa;
run;

title 'Listing of Road_France Dataset';
proc print data=Road_france;
run;