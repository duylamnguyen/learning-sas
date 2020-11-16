libname mydata '/folders/myfolders/mydata';

proc means data=mydata.college noprint chartype;
	class Gender SchoolSize;
	var ClassRank GPA;
	output	out=Summary
			n=
			mean=
			median=
			min=
			max= / autoname;
run;

data	Grand (drop=Gender SchoolSize)
		ByGender (drop=SchoolSize)
		BySize (drop=Gender)
		Cell;
	set Summary;
	drop _type_;
	rename _freq_ = Number;
	if _type_ = '00' then output Grand;
	else if _type_ = '10' then output ByGender;
	else if _type_ = '01' then output BySize;
	else if _type_ = '11' then output Cell;
run;

title 'Listing of Data Set Grand';
proc print data=Grand noobs;
run;

title 'Listing of Data Set ByGender';
proc print data=ByGender noobs;
run;

title 'Listing of Data Set BySize';
proc print data=BySize noobs;
run;

title 'Listing of Data Set Cell';
proc print data=Cell noobs;
run;