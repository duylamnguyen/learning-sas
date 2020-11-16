data Subset_B Subset_A;
	infile '/folders/myfolders/blood.txt';
	input	id				$
			gender			$
			blood_type		$
			age_type		$
			wbc				
			rbc				
			chol			;
	combined = .001 * wbc + rbc;
	if gender eq 'Female' and blood_type eq 'AB' then output Subset_A;
	else if gender eq 'Male' and blood_type eq 'AB' and combined ge 14 then output Subset_B;
run;

title 'Listing of Subset A';

proc print data=Subset_A;
run;

title 'Listing of Subset B';

proc print data=Subset_B;
run;