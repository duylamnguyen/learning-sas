libname mydata '/folders/myfolders/mydata';

data missing_blood;
	set mydata.blood;
	if missing(wbc) then MissWBC + 1;
	if missing(rbc) then MissRBC + 1;
	if missing(chol) then MissChol + 1;
run;

title 'Listing of Missing Blood Dataset';
proc print data=missing_blood (firstobs=1000 keep=MissWBC MissRBC MissChol);
run;