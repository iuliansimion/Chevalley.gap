
local reps,tori,labels,I,II,ords,blocks;

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],        # E_6
#       [[3,1],[5,1],[1,1],[6,1],[9,1],[10,1],[2,1]], # E_6(a_1)
       [[1,1],[2,1],[9,1],[10,1],[5,1],[6,1]],       # E_6(a_1)
       [[1,1],[3,1],[4,1],[2,1],[5,1]],              # D_5
#       [[13,1],[1,1],[15,1],[6,1],[14,1],[4,1]],     # E_6(a_3)
       [[1,1],[8,1],[9,1],[11,1],[14,1],[19,1]],      # E_6(a_3) Seitz' rep
#       [[4,1],[6,1],[7,1],[9,1],[14,1],[15,1]],      # E_6(a_3) Ross' rep
#       [[1,1],[3,1],[8,1],[10,1],[2,1],[5,1]],       # D_5(a_1)
       [[1,1],[8,1],[9,1],[2,1],[5,1]],              # D_5(a_1)
       [[1,1],[3,1],[4,1],[5,1],[6,1]],              # A_5
       [[1,1],[3,1],[4,1],[2,1],[6,1]],              # A_4(a_1)
       [[3,1],[4,1],[2,1],[5,1]],                    # D_4
       [[1,1],[3,1],[4,1],[2,1]],                    # A_4
#       [[3,1],[8,1],[10,1],[2,1],[5,1]],             # D_4(a_1)
       [[2,1],[3,1],[8,1],[10,1]],                   # D_4(a_1)
       [[1,1],[3,1],[4,1],[6,1]],                    # A_3A_1
       [[1,1],[3,1],[5,1],[6,1],[2,1]],              # A_2^2A_1
       [[1,1],[3,1],[4,1]],                          # A_3
       [[2,1],[4,1],[1,1],[6,1]],                    # A_2A_1^2
       [[1,1],[3,1],[5,1],[6,1]],                    # A_2^2
       [[1,1],[3,1],[2,1]],                          # A_2A_1
       [[1,1],[3,1]],                                # A_2
       [[1,1],[4,1],[6,1]],                          # A_1^3
       [[1,1],[6,1]],                                # A_1^2
       [[1,1]]                                       # A_1
       ];

I:=[[],[4],[],[2,3,5],[4],[],[],[],[],[4],
    [],[],[],[],[],[],[],[],[],[]];

#
# The parabolic where the representative is distinguished
#
II:=[[1,2,3,4,5,6],
     [1,2,3,4,5,6],
     [1,2,3,4,5],
     [1,2,3,4,5,6],
     [1,2,3,4,5],
     [1,3,4,5,6],
     [1,2,3,4,6],
     [2,3,4,5],
     [1,2,3,4],
     [2,3,4,5],
     [1,3,4,6],
     [1,2,3,5,6],
     [1,3,4],
     [1,2,4,6],
     [1,3,5,6],
     [1,2,3],
     [1,3],
     [1,4,6],
     [1,6],
     [1]];

labels:=["E_6",
         "E_6(a_1)",
         "D_5",
         "E_6(a_3)",
         "D_5(a_1)",
         "A_5",
         "A_4A_1",
         "D_4",
         "A_4",
         "D_4(a_1)",
         "A_3A_1",
         "A_2^2A_1",
         "A_3",
         "A_2A_1^2",
         "A_2^2",
         "A_2A_1",
         "A_2",
         "A_1^3",
         "A_1^2",
         "A_1"];

tori:=[
    [2,2,2,2,2,2],
    [2,2,2,0,2,2],
    [2,2,2,2,2,-10],
    [2,0,0,2,0,2],
    [2,2,2,0,2,-7],
    [2,-9,2,2,2,2],
    [2,2,2,2,-7,2],
    [-6,2,2,2,2,-6],
    [2,2,2,2,-6,0],
    [-4,2,2,0,2,-4],
    [2,-3,2,2,-4,2],
    [2,2,2,-5,2,2],
    [2,-3,2,2,-3,0],
    [2,2,-3,2,-3,2],
    [2,0,2,-4,2,2],
    [2,2,2,-3,0,0],
    [2,0,2,-2,0,0],
    [2,-1,-2,2,-2,2],
    [2,0,-1,0,-1,2],
    [2,0,-1,0,0,0]
    ];

#blocks:=[];
blocks:=[[[16, 4], [8, 1], [6, 1]], [[16, 2], [11, 2], [8, 2], [4, 2]], [[8, 9], [6, 1]], [[8, 8], [4, 2], [3, 2]], [[8, 5], [6, 1], [4, 8]], [[8, 8], [2, 6], [1, 2]], [[8, 4], [6, 2], [5, 2], [4, 4], [2, 4]], [[8, 1], [6, 9], [2, 8]], [[8, 2], [7, 4], [5, 2], [4, 2], [3, 4], [1, 4]], [[4, 18], [3, 2]], [[4, 16], [2, 6], [1, 2]], [[4, 16], [2, 6], [1, 2]], [[4, 16], [2, 4], [1, 6]], [[4, 10], [3, 2], [2, 16]], [[4, 16], [1, 14]], [[4, 8], [3, 6], [2, 10], [1, 8]], [[4, 2], [3, 18], [1, 16]], [[2, 38], [1, 2]], [[2, 32], [1, 14]], [[2, 22], [1, 34]]];


#ords:=[];
ords:=[ 16, 16, 8, 8, 8, 8, 8, 8, 8, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2 ];

return [reps,tori,labels,I,II,ords,blocks];
