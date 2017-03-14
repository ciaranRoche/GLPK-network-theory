# @file toy_basic.mod
#@brief Implementtation of toy problem

/* decision variables */

var x1 >= 0;
var x2 >= 0;

/* objective function */
maximize z : 3*x1 + 2*x2;

/* constraints */
s.t. finishing : 2*x1 + x2 <= 100;
s.t. carpentry : x1 + x2 <= 80;
s.t. demand : x1 <= 40;

end;
