libname mydata '/folders/myfolders/mydata';

data names_and_more;
	set mydata.names_and_more;
	length area_code 3.;
	area_code_char = compress(scan(Phone, 1, ')'),,'kd') ;
	area_code = input(area_code_char, 3.);
	phone_no_char = compress(scan(Phone, 2, ')'),,'kd');
	phone_no = input(phone_no_char, 8.);
	drop area_code_char phone_no_char;
run;

title 'Listing of Names and More';
proc print data=names_and_more;
run;