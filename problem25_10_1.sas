libname mydata '/folders/myfolders/mydata';

title "Listing Produced on &sysday, &sysdate9 at &systime";
proc print data=mydata.stocks (obs=5) noobs;
run;