Problem:    min
Rows:       15
Columns:    6 (6 integer, 6 binary)
Non-zeros:  34
Status:     INTEGER OPTIMAL
Objective:  z = 3 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 z                           3                             
     2 covered[1,2]                1             1               
     3 covered[1,3]                1             1               
     4 covered[2,3]                2             1               
     5 covered[2,4]                2             1               
     6 covered[3,5]                1             1               
     7 covered[4,5]                1             1               
     8 covered[4,6]                1             1               
     9 covered[2,1]                1             1               
    10 covered[3,1]                1             1               
    11 covered[3,2]                2             1               
    12 covered[4,2]                2             1               
    13 covered[5,3]                1             1               
    14 covered[5,4]                1             1               
    15 covered[6,4]                1             1               

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 x[1]         *              0             0             1 
     2 x[2]         *              1             0             1 
     3 x[3]         *              1             0             1 
     4 x[4]         *              1             0             1 
     5 x[5]         *              0             0             1 
     6 x[6]         *              0             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
