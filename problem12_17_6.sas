libname mydata '/folders/myfolders/mydata';

data Study;
	set mydata.study;
	length GroupDose1 GroupDose2 $ 6.;
	GroupDose1 = cats(Group, Dose);
	GroupDose2 = strip(Group || Dose);
run;

title 'Listing of Study';
proc print data=Study;
run;