libname mydata '/folders/myfolders/mydata';

title 'Selected Stats Using PROC MEANS';
proc means data=mydata.college mean median min max n nmiss maxdec=2;
	var ClassRank GPA;
run;

proc sort data=mydata.college out= college;
	by Gender SchoolSize;
run;

title 'Adding a BY Statement to PROC MEANS';
proc means data=college n nmiss mean median min max maxdec=2;
	by Gender SchoolSize;
	var ClassRank GPA;
run;

title 'Adding a CLASS Statement to PROC MEANS';
proc means data=college n nmiss mean median min max maxdec=2;
	class Gender SchoolSize;
	var ClassRank GPA;
run;