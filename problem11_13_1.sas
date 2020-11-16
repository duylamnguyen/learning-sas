libname mydata '/folders/myfolders/mydata';

data health;
	set mydata.health;
	
	lbs_to_kg = 0.4545;
	in_to_m = 0.0254;
	
	weight_kg = weight * lbs_to_kg;
	height_m = height * in_to_m;
	
	bmi = weight_kg / height_m;
	
	bmi_round = round(bmi);
	bmi_tenth = round(bmi, 0.1);
	bmi_group = round(bmi, 5);
	bmi_trunc = ceil(bmi);
run;

title 'Listing of Health Dataset';
proc print data=health (drop=lbs_to_kg in_to_m bmi weight height) noobs;
	id subj;
run;