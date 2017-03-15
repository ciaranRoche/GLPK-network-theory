# @file		min-vertix.mod
# @author 	ciaran roche
# @brief	Implementation of the min vertix problem


param n, integer;

set V := 1..n; 					# set of nodes
set E, within V cross V;		# set of edges in graph

param c{(i, j) in E};			# distance from node i to node j
var x{i in V}, binary;			# 1 = use node i, 0 = don`t use node i

minimize z: sum{i in V} x[i];

s.t. covered {(i, j) in E}: x[i] + x[j] >= 1;

solve; 

printf " \n\n <<<<------------------------------->>>> \n ";
printf "	 the minimum vertex cover is = %g \n",
sum{i in V} x[i];
printf " \n 	The nodes covered: ";
printf {i in V} if x[i]=1 then " %2g %2g %2g \n" else "", i;
printf " \n <<<<------------------------------->>>> \n\n ";

end;