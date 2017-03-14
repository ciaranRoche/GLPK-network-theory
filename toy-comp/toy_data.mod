# @file toy_data.mod
# @brief Implementation of toy problem

/* set of toys */
set TOYS;

/* parameters */
param finishing_hours {i in TOYS};
param carpentry_hours {i in TOYS};
param demand_toys {i in TOYS};
param profit_toys {i in TOYS};

/* decision variables */
var x {i in TOYS} >= 0;

/* objective function */
maximize z : sum {i in TOYS} profit_toys[i]*x[i];

/* constraints */
s.t. finishing : sum {i in TOYS} finishing_hours [i]*x[i] <= 100;
s.t. carpentry : sum {i in TOYS} carpentry_hours [i]*x[i] <= 80;
s.t. demand {i in TOYS} : x[i] <= demand_toys[i];

data;

set TOYS := soldier train;

param finishing_hours := 
	soldier 2
	train 1;

param carpentry_hours := 
	soldier 1
	train 1;

param demand_toys :=
	soldier 40
	train 6.3E+23;

param profit_toys :=
	soldier 3
	train 2;

end
