
local reps,tori,labels,I,II,ords,blocks;

# Permutation from standard to gap
# / 1 2 3 4 \
# \ 2 4 3 1 /
# Position(pr,Permuted([2,3,4,2],(2,4,1)))=24;


#......Ross Jordan Block Sizes........Donna & Ross nilpotents........(in GAP notation)
reps:=[[[2,1],[4,1],[3,1],[1,1]],    # F_4
       [[2,1],[4,1],[7,1],[5,1]],    # F_4(a_1) [[2,1],[4,1],[10,1],[1,1]],
       #[[6,1],[10,1],[1,1],[5,1]],   # F_4(a_2) [[9,1],[1,1],[10,1],[4,1]],
       # F_4(a_2): s_11s_9*[4,3,1,24]=[4,5,9,10] also good .. has 2 semisimple elements?
       [[1,1],[4,1],[9,1],[10,1]],   # F_4(a_2) good for all p\neq 2 <C_3A_1
       [[4,1],[3,1],[1,1]],          # C_3      [[1,1],[3,1],[4,1]],
       [[2,1],[4,1],[3,1]],          # B_3      the same
       [[4,1],[6,1],[10,1],[18,1]],  # F_4(a_3) [[4,1],[13,1],[11,1],[12,1]],
       [[4,1],[1,1],[10,1]],         # C_3(a_1) [[1,1],[10,1],[4,1]],
       [[2,1],[3,1],[1,1]],          # sA_2A_1  [[3,1],[1,1],[2,1]],
       [[4,1],[3,1]],                # B_2      the same
       [[2,1],[4,1],[1,1]],          # A_2sA_1  the same
       [[3,1],[1,1]],                # sA_2     the same
       [[2,1],[4,1]],                # A_2      the same
#       [[2,1],[3,1]],                # A_1sA_1  [[2,1],[1,1]],
#       [[3,1]],                      # sA_1     [[1,1]],
#       [[2,1]]                       # A_1      [[2,1]]
       [[2,1],[1,1]],                # A_1sA_1  [[2,1],[1,1]],
       [[1,1]],                      # sA_1     [[1,1]],
       [[2,1]]                       # A_1      [[2,1]]
       ];

I:=[[],     # F_4
    [3],    # F_4(a_1)
    [3,4],  # F_4(a_2)
    [],     # C_3
    [],     # B_3
    [2,3,1],# F_4(a_3)
    [3],    # C_3(a_1)
    [],     # sA_2A_1
    [],     # B_2
    [],     # A_2sA_1
    [],     # sA_2
    [],     # A_2
    [],     # A_1sA_1
    [],     # sA_1
    []      # A_1
    ];

#
# The parabolic where the representative is distinguished
#
II:=[[1,2,3,4],   # F_4
     [1,2,3,4],   # F_4(a_1)
     [1,2,3,4],   # F_4(a_2)
     [4,3,1],     # C_3
     [2,4,3],     # B_3
     [1,2,3,4],   # F_4(a_3)
     [4,3,1],     # C_3(a_1)
     [3,1,2],     # sA_2A_1
     [4,3],       # B_2
     [2,4,1],     # A_2sA_1
     [3,1],       # sA_2
     [2,4],       # A_2
     [2,1],       # A_1sA_1
     [1],         # sA_1
     [2]          # A_1
     ];

labels:=["F_4",
         "F_4(a_1)",
         "F_4(a_2)",
         "C_3",
         "B_3",
         "F_4(a_3)",
         "C_3(a_1)",
         "\\tilde A_2A_1",
         "B_2",
         "A_2\\tilde A_1",
         "\\tilde A_2",
         "A_2",
         "A_1\\tilde A_1",
         "\\tilde A_1",
         "A_1"
         ];

tori:=[
       [2,2,2,2],  # F_4
       [2,2,0,2],  # F_4(a_1)
       [2,0,0,2],  # F_4(a_2)
       [2,-9,2,2], # C_3
       [-6,2,2,2], # B_3
       [0,0,0,2],  # F_4(a_3)
       [2,-5,0,2], # C_3(a_1)
       [2,2,2,-5], # sA_2A_1
       [-3,-4,2,2],# B_2
       [2,2,-3,2], # A_2sA_1
       [2,0,2,-4], # sA_2
       [0,2,-2,2], # A_2
       [2,2,-1,-1],# A_1sA_1
       [2,0,-1,0], # sA_1
       [0,2,0,-1]  # A_1
    ];

#blocks:=[];
blocks:=[[[19, 1], [15, 1], [9, 2]],                      # F_4
         [[9, 5], [7, 1]],                                # F_4(a_1)
         [[9, 3], [7, 1],[6, 2], [3, 2]],                 # F_4(a_2)
         [[9, 2], [8, 2], [6, 2], [3, 1], [1, 3]],        # C_3
         [[9, 2], [7, 4], [3, 1], [1, 3]],                # B_3
         [[7, 1], [6, 2], [5, 3], [3, 6]],                # F_4(a_3)
         [[7, 1], [6, 2], [5, 1], [4, 4], [3, 3], [1, 3]],# C_3(a_1)
         [[3, 16], [2, 2]],                               # sA_2A_1
         [[7, 1], [5, 4], [4, 4], [3, 1], [1, 6]],        # B_2
         [[3, 16], [2, 2]],                               # A_2sA_1
         [[3, 15], [1, 7]],                               # sA_2
         [[3, 15], [1, 7]],                               # A_2
         [[3, 10], [2, 8], [1, 6]],                       # A_1sA_1
         [[3, 7], [2, 8], [1, 15]],                       # sA_1
         [[3, 1], [2, 14], [1, 21]]                       # A_1
         ];

#ords:=[];
ords:=[ 27, 9, 9, 9, 9, 9, 9, 3, 9, 3, 3, 3, 3, 3, 3 ];

return [reps,tori,labels,I,II,ords,blocks];