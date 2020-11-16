libname mydata '/folders/myfolders/mydata';

data exact within25;
	set mydata.Social;
	if SS1 eq SS2 then output exact;
	else if spedis(SS1, SS2) le 25 and
		not missing(SS1) and
		not missing(SS2) then output within25;
run;

title 'Listing of Exact';
proc print data=exact noobs;
run;

title 'Listing of Within25';
proc print data=within25 noobs;
run;