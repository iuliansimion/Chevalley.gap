
local reps,tori,labels,I,II,ords,blocks;

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],            # E_7
       [[1,1],[3,1],[10,1],[9,1],[5,1],[6,1],[7,1]],           # E_7(a_1)
       [[1,1],[2,1],[3,1],[9,1],[11,1],[12,1],[13,1]],         # E_7(a_2)
       [[15,1],[1,1],[17,1],[6,1],[7,1],[16,1],[4,1]],         # E_7(a_3) asta functioneaza in caracteristica 3
#       [[1,1],[4,1],[7,1],[11,1],[12,1],[15,1],[17,1]],        # E_7(a_3)
       [[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],                  # E_6
#       [[3,1],[5,1],[1,1],[6,1],[10,1],[11,1],[2,1]],          # E_6(a_1)
       [[1,1],[2,1],[10,1],[11,1],[5,1],[6,1]],                # E_6(a_1)
       [[7,1],[6,1],[5,1],[4,1],[2,1],[3,1]],                  # D_6
       [[1,1],[4,1],[7,1],[13,1],[15,1],[16,1],[17,1],[23,1]], # E_7(a_4) acelas ca cel mai de jos dar ordonat
#       [[15,1],[1,1],[17,1],[13,1],[23,1],[7,1],[16,1],[4,1]], # E_7(a_4) asta functioneaza in caracteristica 3
#       [[1,1],[4,1],[7,1],[10,1],[22,1],[23,1],[24,1]],        # E_7(a_4)
#       [[7,1],[6,1],[5,1],[9,1],[10,-1],[2,1],[3,1]],          # D_6(a_1)
       [[2,1],[3,1],[9,1],[11,1],[6,1],[7,1]],                # D_6(a_1)
       [[1,1],[3,1],[4,1],[2,1],[5,1],[7,1]],                  # D_5A_1
       [[1,1],[3,1],[4,1],[5,1],[6,1],[7,1]],                  # A_6
#       [[21,1],[23,1],[7,1],[24,1],[20,1],[4,1],[22,1]],       # E_7(a_5)
       [[4,1],[10,1],[13,1],[14,1],[21,1],[22,1],[23,1]],      # E_7(a_5)
       [[1,1],[3,1],[4,1],[2,1],[5,1]],                        # D_5
       [[15,1],[1,1],[17,1],[6,1],[16,1],[4,1]],               # E_6(a_3) this works in characteristic 3
#       [[4,1],[6,1],[8,1],[10,1],[16,1],[17,1]],               # E_6(a_3)
#       [[7,1],[12,1],[9,1],[10,-1],[11,1],[2,1],[3,1]],        # D_6(a_2)
       [[2,1],[3,1],[9,1],[11,1],[12,1],[13,1]],              # D_6(a_2)
#       [[1,1],[3,1],[9,1],[11,1],[2,1],[5,1],[7,1]],           # D_5(a_1)A_1
       [[1,1],[9,1],[10,1],[2,1],[5,1],[7,1]],                # D_5(a_1)A_1
       
       [[2,1],[4,1],[5,1],[6,1],[7,1],[1,1]],       # A_5A_1
       [[1,1],[3,1],[4,1],[5,1],[6,1]],             # (A_5)'
       [[1,1],[3,1],[4,1],[2,1],[6,1],[7,1]],       # A_4A_2
#       [[1,1],[3,1],[9,1],[11,1],[2,1],[5,1]],      # D_5(a_1)
#       [[1,1],[10,1],[11,1],[2,1],[5,1]],           # D_5(a_1) ALSO WORKS?
       [[1,1],[9,1],[10,1],[2,1],[5,1]],           # D_5(a_1)
       [[1,1],[2,1],[3,1],[4,1],[6,1]],             # A_4A_1
       [[3,1],[4,1],[2,1],[5,1],[7,1]],             # D_4A_1
       [[2,1],[4,1],[5,1],[6,1],[7,1]],             # (A_5)''
       [[1,1],[3,1],[2,1],[5,1],[6,1],[7,1]],       # A_3A_2A_1
       [[1,1],[2,1],[3,1],[4,1]],                   # A_4
#       [[3,1],[4,1],[2,1],[6,1],[7,1]],             # A_3A_2
       [[3,1],[4,1],[2,1],[6,1],[7,1]],             # A_3A_2
#       [[3,1],[9,1],[11,1],[2,1],[5,1],[7,1]],      # D_4(a_1)A_1
#       [[2,1],[3,1],[9,1],[11,1],[7,1]],           # D_4(a_1)A_1 
       [[2,1],[5,1],[9,1],[10,1],[7,1]],           # D_4(a_1)A_1  cel de deasupra simetric fata de D4
       [[3,1],[4,1],[2,1],[5,1]],                   # D_4
       [[5,1],[6,1],[7,1],[2,1],[3,1]],             # A_3A_1^2
#       [[3,1],[9,1],[11,1],[2,1],[5,1]],            # D_4(a_1)
       [[2,1],[3,1],[9,1],[11,1]],                 # D_4(a_1)
       [[1,1],[3,1],[4,1],[6,1]],                   # (A_3A_1)'
       [[1,1],[3,1],[5,1],[6,1],[2,1]],             # A_2^2A_1
       [[5,1],[6,1],[7,1],[2,1]],                   # (A_3A_1)''
       [[1,1],[3,1],[2,1],[5,1],[7,1]],             # A_2A_1^3
       [[1,1],[3,1],[5,1],[6,1]],                   # A_2^2
       [[1,1],[3,1],[4,1]],                         # A_3
       [[2,1],[4,1],[1,1],[6,1]],                   # A_2A_1^2
       [[1,1],[3,1],[2,1]],                         # A_2A_1
       [[2,1],[3,1],[5,1],[7,1]],                   # A_1^4
       [[1,1],[3,1]],                               # A_2
       [[1,1],[4,1],[6,1]],                         # (A_1^3)'
       [[2,1],[5,1],[7,1]],                         # (A_1^3)''
       [[1,1],[6,1]],                               # A_1^2
       [[1,1]]                                      # A_1
       ];

I:=[[],          # E_7
    [4],         # E_7(a_1)
    [4,6],       # E_7(a_2)
#    [2,3,5],     # E_7(a_3)
    [],          # E_7(a_3)
    [],          # E_6
#    [4],         # E_6(a_1)
    [],          # E_6(a_1)
    [],          # D_6
#    [2,3,5,6],   # E_7(a_4)
    [],          # E_7(a_4)
#    [4],         # D_6(a_1)
    [],          # D_6(a_1)
    [],          # D_5A_1
    [],          # A_6
#    [1,2,3,5,6], # E_7(a_5)
    [],          # E_7(a_5)
    [],          # D_5
#    [2,3,5],     # E_6(a_3)
    [],          # E_6(a_3)
#    [4,5],       # D_6(a_2)    ???
    [],          # D_6(a_2)    ???
#    [4],         # D_5(a_1)A_1 ???
    [],          # D_5(a_1)A_1 ???
    
    [],          # A_5A_1
    [],          # (A_5)'
    [],          # A_4A_2
#    [4],         # D_5(a_1)    ???
    [],          # D_5(a_1)    ???
    [],          # A_4A_1
    [],          # D_4A_1
    [],          # (A_5)''
    [],          # A_3A_2A_1
    [],          # A_4
    [],          # A_3A_2
#    [4],         # D_4(a_1)A_1
    [],          # D_4(a_1)A_1
    [],          # D_4
    [],          # A_3A_1^2
#    [4],         # D_4(a_1)
    [],          # D_4(a_1)
    [],          # (A_3A_1)'
    [],          # A_2^2A_1
    [],          # (A_3A_1)''
    [],          # A_2A_1^3
    [],          # A_2^2
    [],          # A_3
    [],          # A_2A_1^2
    [],          # A_2A_1
    [],          # A_1^4
    [],          # A_2
    [],          # (A_1^3)'
    [],          # (A_1^3)''
    [],          # A_1^2
    []           # A_1
    ];


#
# The parabolic where the representative is distinguished
#
II:=[[1,2,3,4,5,6,7],  # E_7
     [1,2,3,4,5,6,7],  # E_7(a_1)
     [1,2,3,4,5,6,7],  # E_7(a_2)
     [1,2,3,4,5,6,7],  # E_7(a_3)
#     [],  # E_7(a_3)
     [1,2,3,4,5,6],    # E_6
     [1,2,3,4,5,6],    # E_6(a_1)
#     [],    # E_6(a_1)
     [2,3,4,5,6,7],    # D_6
     [1,2,3,4,5,6,7],  # E_7(a_4)
#     [],  # E_7(a_4)
     [2,3,4,5,6,7],    # D_6(a_1)
#     [],    # D_6(a_1)
     [1,2,3,4,5,7],    # D_5A_1
     [1,3,4,5,6,7],    # A_6
     [1,2,3,4,5,6,7],  # E_7(a_5)
#     [],  # E_7(a_5)
     [1,2,3,4,5],      # D_5
     [1,2,3,4,5,6],    # E_6(a_3)
#     [],    # E_6(a_3)
     [2,3,4,5,6,7],    # D_6(a_2)
#     [],    # D_6(a_2)
     [1,2,3,4,5,7],    # D_5(a_1)A_1
#     [],    # D_5(a_1)A_1
     
     [1,2,4,5,6,7],    # A_5A_1
     [1,3,4,5,6],      # (A_5)'
     [1,2,3,4,6,7],    # A_4A_2
     [1,2,3,4,5],      # D_5(a_1)
#     [],      # D_5(a_1)
     [1,2,3,4,6],      # A_4A_1
     [2,3,4,5,7],      # D_4A_1
     [2,4,5,6,7],      # (A_5)''
     [1,2,3,5,6,7],    # A_3A_2A_1
     [1,2,3,4],        # A_4
     [2,3,4,6,7],      # A_3A_2
     [2,3,4,5,7],      # D_4(a_1)A_1
#     [],      # D_4(a_1)A_1
     [2,3,4,5],        # D_4
     [2,3,5,6,7],      # A_3A_1^2
     [2,3,4,5],        # D_4(a_1)
#     [],        # D_4(a_1)
     [1,3,4,6],        # (A_3A_1)'
     [1,2,3,5,6],      # A_2^2A_1
     [2,5,6,7],        # (A_3A_1)''
     [1,2,3,5,7],      # A_2A_1^3
     [1,3,5,6],        # A_2^2
     [1,3,4],          # A_3
     [1,2,4,6],        # A_2A_1^2
     [1,2,3],          # A_2A_1
     [2,3,5,7],        # A_1^4
     [1,3],            # A_2
     [1,4,6],          # (A_1^3)'
     [2,5,7],          # (A_1^3)''
     [1,6],            # A_1^2
     [1]               # A_1
     ];

labels:=["E_7",
         "E_7(a_1)",
         "E_7(a_2)",
         "E_7(a_3)",
         "E_6",
         "E_6(a_1)",
         "D_6",
         "E_7(a_4)",
         "D_6(a_1)",
         "D_5A_1",
         "A_6",
         "E_7(a_5)",
         "D_5",
         "E_6(a_3)",
         "D_6(a_2)",
         "D_5(a_1)A_1",
         
         "A_5A_1",
         "(A_5)1",
         "A_4A_2",
         "D_5(a_1)",
         "A_4A_1",
         "D_4A_1",
         "(A_5)2",
         "A_3A_2A_1",
         "A_4",
         "A_3A_2",
         "D_4(a_1)A_1",
         "D_4",
         "A_3A_1^2",
         "D_4(a_1)",
         "(A_3A_1)1",
         "A_2^2A_1",
         "(A_3A_1)2",
         "A_2A_1^3",
         "A_2^2",
         "A_3",
         "A_2A_1^2",
         "A_2A_1",
         "A_1^4",
         "A_2",
         "(A_1^3)1",
         "(A_1^3)2",
         "A_1^2",
         "A_1"
         ];

tori:=[
       [2,2,2,2,2,2,2],   # E_7
       [2,2,2,0,2,2,2],   # E_7(a_1)
       [2,2,2,0,2,0,2],   # E_7(a_2)
       [2,0,0,2,0,2,2],   # E_7(a_3)
#    [],   # E_7(a_3)
       [2,2,2,2,2,2,-16], # E_6
       [2,2,2,0,2,2,-12], # E_6(a_1)
#    [], # E_6(a_1)
       [-15,2,2,2,2,2,2], # D_6
       [2,0,0,2,0,0,2],   # E_7(a_4)
#    [],   # E_7(a_4)
       [-11,2,2,0,2,2,2], # D_6(a_1)
#    [], # D_6(a_1)
       [2,2,2,2,2,-11,2], # D_5A_1
       [2,-12,2,2,2,2,2], # A_6
       [0,0,0,2,0,0,2],   # E_7(a_5)
#    [],   # E_7(a_5)
       [2,2,2,2,2,-10,0], # D_5
       [2,0,0,2,0,2,-8],  # E_6(a_3)
#    [],  # E_6(a_3)
       [-9,2,2,0,2,0,2],  # D_6(a_2)
#    [],  # D_6(a_2)
       [2,2,2,0,2,-8,2],  # D_5(a_1)A_1
#    [],  # D_5(a_1)A_1
    
       [2,2,-9,2,2,2,2],   # A_5A_1
       [2,-9,2,2,2,2,-5],  # (A_1)'
       [2,2,2,2,-8,2,2],   # A_4A_2
       [2,2,2,0,2,-7,0],   # D_5(a_1)
#    [],   # D_5(a_1)
       [2,2,2,2,-7,2,-1],  # A_4A_1
       [-6,2,2,2,2,-7,2],  # D_4A_1
       [0,2,-8,2,2,2,2],   # (A_5)''
       [2,2,2,-6,2,2,2],   # A_3A_2A_1
       [2,2,2,2,-6,0,0],   # A_4
       [-3,2,2,2,-6,2,2],  # A_3A_2
       [-4,2,2,0,2,-5,2],  # D_4(a_1)A_1
#    [],  # D_4(a_1)A_1
       [-6,2,2,2,2,-6,0],  # D_4
       [-1,2,2,-5,2,2,2],  # A_3A_1^2
       [-4,2,2,0,2,-4,0],  # D_4(a_1)
#    [],  # D_4(a_1)
       [2,-3,2,2,-4,2,-1], # (A_3A_1)'
       [2,2,2,-5,2,2,-2],  # A_2^2A_1
       [0,2,0,-4,2,2,2],   # (A_3A_1)''
       [2,2,2,-4,2,-2,2],  # A_2A_1^3
       [2,0,2,-4,2,2,-2],  # A_2^2
       [2,-3,2,2,-3,0,0],  # A_3
       [2,2,-3,2,-3,2,-1], # A_2A_1^2
       [2,2,2,-3,0,0,0],   # A_2A_1
       [-1,2,2,-3,2,-2,2], # A_1^4
       [2,0,2,-2,0,0,0],   # A_2
       [2,-1,-2,2,-2,2,-1],# (A_1^3)'
       [0,2,0,-2,2,-2,2],  # (A_1^3)''
       [2,0,-1,0,-1,2,-1], # A_1^2
       [2,0,-1,0,0,0,0],   # A_1
    ];

#blocks:=[];
blocks:=
[[[27, 3], [19, 1], [15, 1], [9, 2]], [[27, 1], [19, 1], [18, 2], [15, 1], [9, 4]], [[19, 1], [18, 2], [15, 1], [9, 7]], [[19, 1], [17, 1], [15, 2], [11, 2], [9, 3], [6, 2], [3, 2]], [[19, 1], [15, 4], [9, 5], [3, 3]], [[9, 14], [7, 1]], [[19, 1], [16, 2], [15, 1], [11, 1], [10, 2], [9, 2], [6, 2], [3, 1], [1, 3]], [[9, 12], [7, 1], [6, 2], [3, 2]], [[9, 11], [8, 2], [6, 2], [3, 1], [1, 3]], [[9, 11], [8, 2], [6, 2], [3, 1], [1, 3]], [[9, 11], [7, 4], [3, 1], [1, 3]], [[9, 9], [7, 1], [6, 2], [5, 3], [3, 6]], [[9, 11], [7, 4], [1, 6]], [[9, 6], [7, 1], [6, 8], [3, 8]], [[9, 9], [7, 1], [6, 2], [5, 1], [4, 4], [3, 3], [1, 3]], [[9, 5], [7, 4], [6, 6], [3, 7], [1, 3]], [[9, 9], [3, 16], [2, 2]], [[9, 5], [8, 2], [6, 8], [3, 7], [1, 3]], [[9, 3], [7, 1], [6, 8], [5, 3], [3, 12]], [[9, 3], [8, 4], [7, 2], [6, 6], [3, 4], [2, 4], [1, 4]], [[9, 1], [8, 2], [7, 3], [6, 4], [5, 5], [4, 2], [3, 8], [2, 2], [1, 2]], [[9, 2], [8, 4], [7, 5], [6, 4], [3, 2], [2, 4], [1, 10]], [[9, 9], [3, 15], [1, 7]], [[7, 1], [6, 8], [5, 3], [3, 21]], [[9, 1], [7, 7], [5, 9], [3, 7], [1, 9]], [[7, 1], [6, 8], [5, 1], [4, 4], [3, 18], [1, 3]], [[7, 1], [6, 6], [5, 4], [4, 4], [3, 16], [1, 6]], [[9, 2], [7, 13], [3, 1], [1, 21]], [[7, 1], [6, 4], [5, 7], [4, 4], [3, 11], [2, 6], [1, 6]], [[7, 1], [6, 2], [5, 12], [3, 15], [1, 9]], [[7, 1], [6, 2], [5, 7], [4, 10], [3, 6], [2, 6], [1, 9]], [[3, 43], [2, 2]], [[7, 1], [5, 15], [3, 10], [1, 21]], [[3, 42], [1, 7]], [[3, 42], [1, 7]], [[7, 1], [5, 7], [4, 16], [3, 1], [1, 24]], [[3, 37], [2, 8], [1, 6]], [[3, 34], [2, 8], [1, 15]], [[3, 28], [2, 14], [1, 21]], [[3, 33], [1, 34]], [[3, 19], [2, 26], [1, 24]], [[3, 27], [1, 52]], [[3, 10], [2, 32], [1, 39]], [[3, 1], [2, 32], [1, 66]]];


ords:=[];
#ords:=[ 27, 27, 27, 27, 27, 9, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 9, 3, 3, 9, 3, 3, 3, 3, 3, 3, 3, 3 ];

return [reps,tori,labels,I,II,ords,blocks];