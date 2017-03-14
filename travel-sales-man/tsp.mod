# @file tsp.mod
# @brief implementation of the travelling sales man problem

param n, integer, >= 3;

set V := 1..n;
set E, within V cross V;

param c{(i, j) in E};

var x{(i, j) in E}, binary;

minimize distance: sum {(i, j) in E} c[i, j]*x[i,j];

s.t. leave{i in V}: sum{(i,j) in E} x[i,j] = 1;

s.t. enter{j in V}: sum{(i,j) in E} x[i,j] = 1;

solve;

printf "optimal tour has length %d\n",
sum{(i,j) in E} c[i,j]*x[i,j];
printf("From node   to node   distance\n");
printf{(i,j) in E: x[i,j]} "      %3d       %3d   %3g\n",
i,j,c[i,j];