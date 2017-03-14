# @file toy_pretty.mod

/* decision variables */
var soldier >= 0;
var train >= 0;

/* objective function */
maximize profit : 3*soldier + 2*train;

/* constraints */
s.t. finishing : 2*soldier + train <= 100;
s.t. carpentry : soldier + train <= 80;
s.t. demand : soldier <= 40;

end;
