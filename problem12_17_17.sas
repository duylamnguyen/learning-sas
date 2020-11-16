libname mydata '/folders/myfolders/mydata';

data personal;
	set mydata.personal (drop=Food1-Food8);
	substr(SS, 1, 7) = '******';
	substr(AccNum, 5, 1) = '-';
run;

title 'Listing of Personal (with masked values)';
proc print data=personal noobs;
run;
