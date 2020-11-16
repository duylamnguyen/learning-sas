libname mydata '/folders/myfolders/mydata';

proc means data=mydata.dailyprices noprint nway maxdec=2;
	class Symbol;
	var price;
	output	out=dailyprices
			n=
			mean=
			max=
			min= / autoname;
run;

title 'Listing of Summary';
proc print data=dailyprices(drop=_freq_ _type_) noobs;
run;