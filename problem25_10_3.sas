%macro print_n(first_n, dataset_name);
	libname mydata '/folders/myfolders/mydata';
	
	title "Listing of the first &first_n Observations from Dataset mydata.&dataset_name";
	proc print data=mydata.&dataset_name (obs=&first_n) noobs;
	run;
%mend print_n;

%print_n(5, bicycles);