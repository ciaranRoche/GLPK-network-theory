Problem:    knapsack
Rows:       2
Columns:    8 (8 integer, 8 binary)
Non-zeros:  16
Status:     INTEGER OPTIMAL
Objective:  obj = 200 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 obj                       200                             
     2 used                      100                         100 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1]         *              1             0             1 
     2 x[2]         *              0             0             1 
     3 x[3]         *              0             0             1 
     4 x[4]         *              1             0             1 
     5 x[5]         *              1             0             1 
     6 x[6]         *              0             0             1 
     7 x[7]         *              0             0             1 
     8 x[8]         *              1             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
