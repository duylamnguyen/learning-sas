libname mydata '/folders/myfolders/mydata';

data Convert;
	set mydata.char_num (rename=
						(Age = Char_Age
						 Weight = Char_Weight
						 SS = Char_SS
						 Zip = Char_Zip));
	Age = input(Char_Age, 8.);
	Weight = input(Char_Weight, 8.);
	SS = put(Char_SS, ssn11.);
	Zip = put(Char_Zip, z5.);
	drop Char_Age Char_Weight Char_SS Char_Zip;
run;

title 'Listing of Convert Dataset';
proc print data=Convert;
run;