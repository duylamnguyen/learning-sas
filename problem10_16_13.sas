libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.demographic_id out=demographic_id;
	by ID;
run;

proc sort data=mydata.survey2 out= survey2;
	by ID;
run;

data Demo_Sur2;
	set demographic_id(rename=(ID = CharID));
	ID = input(CharID, Z3.);
	drop CharID;
run;

data Both_Data;
	merge Demo_Sur2 survey2;
	by ID;
run;

title 'Listing of Both_Data';
proc print data=both_data;
run;
