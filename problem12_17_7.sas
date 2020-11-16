libname mydata '/folders/myfolders/mydata';

data Study;
	set mydata.study;
	Combined1 = catx('-', Group, Subgroup);
	Combined2 = compbl(Group || '-' || Subgroup);
	Combined3 = trim(Group) || '-' || put(Subgroup, 1.);
run;

title 'Listing of Study';
proc print data=study;
run;