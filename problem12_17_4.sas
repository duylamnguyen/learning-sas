libname mydata '/folders/myfolders/mydata';

data Height;
	set mydata.names_and_more;
	length Ft_Char In_Char $ 8;
	*Height_Compressed = compress(Height,,'kd');
	Ft_Char = scan(Height, 1, ' ');
	In_Char = scan(Height, 2, ' ');
	Ft = input(compress(Ft_Char,,'kd'), 2.);
	In = input(compress(In_Char,,'kd'), 2.);
	if missing(Ft) then Ft = 0;
	if missing(In) then In = 0;
	HtInches = Ft * 12 + In;
	drop Ft_Char In_Char Ft In;
run;

title 'Listing of Height Dataset';
proc print data=Height noobs;
run;