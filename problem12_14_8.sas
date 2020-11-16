libname mydata '/folders/myfolders/mydata';

data study;
	set mydata.study (keep=Weight);
	Weight_New = compress(lowcase(Weight),, 'p');
	if find(Weight_New, 'lbs') ne 0 then Weight_New = input(compress(Weight_New,,'kd'), 8.);
	else Weight_New = input(compress(Weight_New,,'kd'), 8.) * 2.2;
run;

title 'Listing of Study Dataset';
proc print data=study;
run;