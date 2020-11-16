libname mydata '/folders/myfolders/mydata';

data medical;
	set mydata.medical;
	where findw(Comment, 'antibiotics', ' ', 'i');
run;

title 'Listing of Medical Dataset';
proc print data=medical;
run;