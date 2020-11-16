*
Program name: ... stored in ...
Purpose: ...
Programmer: ...
Date Written: ...
;

data votes;
	infile '/folders/myfolders/political.csv' dsd;
	input state $ party $ age;
run;

title 'votes';

proc print data=votes;
run;

title 'party - freq';

ods noproctitle;

proc freq data=votes;
	tables party;
run;