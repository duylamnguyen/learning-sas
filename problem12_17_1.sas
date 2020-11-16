data storage;
	length	A $ 4
			B $ 4;
	name = 'Goldstein';
	AandB = A || B;
	cat = cats(A,B);
	if not name = 'Smith' then match = 'Yes';
		else match = 'No';
	substring = substr(name, 5, 2);
run;