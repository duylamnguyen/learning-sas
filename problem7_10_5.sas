data Blood;
	infile '/folders/myfolders/blood.txt';
	
	input	id
			gender	$
			type	$
			age		$
			colA	
			colB	
			chol	;
			
	length	cholgroup	$4.;
	
	select;
		when (missing(chol)) cholgroup = ' ';
		when (chol lt 111) cholgroup = 'Low';
		when (chol lt 141) cholgroup = 'Medium';
		otherwise cholgroup = 'High';
	end;
run;

title 'Listing of data set Blood';

proc print data=Blood;
	id id;
run;