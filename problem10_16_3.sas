data Lowmale Lowfemale;
	infile '/folders/myfolders/blood.txt';
	input	id			$
			gender		$
			blood_type	$
			age_type	$
			wbc			
			rbc
			chol		;
	if not missing(chol) then do;
		if chol lt 100 then do;
			if gender eq 'Male' then output Lowmale;
			else if gender eq 'Female' then output Lowfemale; 
		end;
	end;
run;

title 'Listing of Lowmale';
proc print data=Lowmale;

title 'Listing of Lowfemale';
proc print data=lowfemale;