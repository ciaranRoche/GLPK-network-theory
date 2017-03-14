# @file knapsack.mod
# @brief implementation of the knapsack problem

param K;
set ITEMS;
param w{i in ITEMS};
param v{i in ITEMS};

var x{i in ITEMS}, binary;
maximize obj : sum{i in ITEMS} v[i]*x[i];
s.t. used : sum{i in ITEMS} w[i]*x[i] <= K;

solve;

printf "The knapsack contents:\n";
printf "%5s %7s %7s\n", "Item", "Weight", "Value";
printf {i in 1..21} "="; printf "\n";
printf {i in ITEMS: x[i] == 1} "%5s %7s %7s\n", i ,w[i], v[i];
printf {i in 1..21} "="; printf "\n";
printf "%5s %7s %7s\n", " ", used, obj;
end;