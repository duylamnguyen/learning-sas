title 'Listing of Null Dataset';

data _NULL_;
	pi = constant('pi');
	e = constant('e');
	x = 10;
	y = 20;
	z = -30;
	AbsZ = abs(z);
	ExpX = round(exp(x), 0.001);
	Circumference = round(2 * pi * y, 0.001);
	put AbsZ= ExpX= Circumference=;
run;