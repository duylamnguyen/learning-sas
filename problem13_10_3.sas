libname mydata '/folders/myfolders/mydata';

data Nonies;
	set mydata.nines;
	array myvars{*} _numeric_;
	do loop = 1 to dim(myvars);
		if myvars{loop} = 999 then myvars{loop} = .;
	end;
	drop loop;	
run;

title 'Listing of Nonies';
proc print data=nonies;
run;