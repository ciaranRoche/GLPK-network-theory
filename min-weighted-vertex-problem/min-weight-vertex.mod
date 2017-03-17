# @file		min-weight-vertix.mod
# @author 	ciaran roche
# @brief	Implementation of the min weight vertix problem


param n, integer;

set V := 1..n; 					# set of nodes
set E, within V cross V;		# set of edges in graph

param c{(i, j) in E};			# distance from node i to node j
var x{i in V}, binary;			# 1 = use node i, 0 = don`t use node i

minimize z: sum{(i,j) in E} x[i] * c[i,j];

s.t. covered {(i, j) in E}: x[i] + x[j] >= 1;

solve;


printf "\n <<<<------------------------------->>>> \n ";
printf "Min weighted vertex coverage cost = %g \n", z;
printf " <<<<------------------------------->>>> \n ";

printf " \n   node        weight";
printf " \n --------------------------------------- \n";

printf {i in V: x[i]}
        if x[i]=1  then "    %2d      %7g\n"
        else "",

        i, sum{(i, j) in E} x[i] * c[i, j];
printf "\n <<<<------------------------------->>>> \n ";

end;