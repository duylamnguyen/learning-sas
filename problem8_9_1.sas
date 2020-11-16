data vitals;
	input 	id:	$3.
			age
			pulse
			sbp
			dbp;
	label 	sbp = 'Systolic Blood Pressure'
			dbp = 'Diastolic Blood Pressure';
datalines;
001 23 68 120 80
002 55 72 188 96
003 78 82 200 100
004 18 58 110 70
005 43 52 120 82
006 37 74 150 98
007  . 82 140 100
;
run;

data new_vitals;
	set vitals;
	
	length	pulse_group sbp_group $4.;
			
	if not missing(age) then do;
		if (age < 50) then do;
			if (pulse < 70) then pulse_group = 'Low';
			else if (pulse >= 70) then pulse_group = 'High';
			if (sbp < 130) then sbp_group = 'Low';
			else if (sbp >= 130) then sbp_group = 'High';
		end;
		else if (age >= 50) then do;
			if (pulse < 74) then pulse_group = 'Low';
			else if (pulse >= 74) then pulse_group = 'High';
			if (sbp < 140) then sbp_group = 'Low';
			else if (sbp >= 140) then sbp_group = 'High';
		end;
	end;
run;

title 'New Vitals';

proc print data=new_vitals;
run;