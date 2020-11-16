%macro Stats(dsn, class, vars);
	libname mydata '/folders/myfolders/mydata';
	
	title "Statistics from Data Set mydata.&dsn";
	proc means data=mydata.&dsn n mean min max maxdec=1;
		class &class;
		var &vars;
	run;
%mend Stats;

%Stats(dsn=bicycles, class=country, vars= Units TotalSales);