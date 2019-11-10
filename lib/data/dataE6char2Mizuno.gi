
local reps,tori,labels,I,II,ords,mizuno,blocks;

mizuno:=[[ 1, 2, 3, 4, 5, 6, fail,
           7, 8, 9, 10,
           11, 6, 12, 13,
           15, 14, 16, 11,
           17, 18, 19, 21,
           20, 16, 22, 23,
           24, 25, 21, 20,
           26, 27, 23, 28,
           25, 29, 30, 27,
           31, 28, 32, 33,
           30, 31, 34, 32,
           33, fail, 35, 34,
           fail, 36, 35, fail,
           36, fail, fail, fail,
           fail, fail, fail, fail ],
          []];

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],          # E_6
       [[2,1],[4,1],[5,1],[6,1],[8,1],[16,1]],         # E_6(a_1)
       [[1,1],[2,1],[10,1],[11,1],[12,1]],             # D_5
       [[8,1],[9,1],[12,1],[10,1],[11,1],[16,1]],      # A_5+A_1
       [[8,1],[9,1],[16,1],[12,1],[18,1]],             # D_5(a_1)
       [[1,1],[15,1],[16,1],[17,1],[6,1]],             # A_5
       [[14,1],[15,1],[16,1],[17,1],[12,1]],           # A_4+A_1
       [[2,1],[14,1],[16,1],[18,1]],                   # D_4
       [[14,1],[15,1],[17,1],[12,1]],                  # A_4
       [[14,1],[16,1],[22,1],[24,1]],                  # D_4(a_1)
       [[14,1],[22,1],[23,1],[24,1]],                  # A_3+A_1
       [[20,1],[21,1],[28,1],[23,1],[24,1]],           # 2A_2+A_1
       [[14,1],[22,1],[24,1]],                         # A_3
       [[26,1],[27,1],[28,1],[29,1]],                  # A_2+2A_1
       [[20,1],[21,1],[23,1],[24,1]],                  # 2A_2
       [[26,1],[27,1],[35,1]],                         # A_2+A_1
       [[26,1],[35,1]],                                # A_2
       [[37,1],[38,1],[40,1]],                         # 3A_1
       [[42,1],[43,1]],                                # 2A_1
       [[53,1]]                                        # A_1
       ];

labels:=["E_6",
         "E_6(a_1)",
         "D_5",
         "A_5+A_1",
         "D_5(a_1)",
         "A_5",
         "A_4+A_1",
         "D_4",
         "A_4",
         "D_4(a_1)",
         "A_3+A_1",
         "2A_2+A_1",
         "A_3",
         "A_2+2A_1",
         "2A_2",
         "A_2+A_1",
         "A_2",
         "3A_1",
         "2A_1",
         "A_1",
         ];

I:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

II:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

tori:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

#blocks:=[];
blocks:=[[[16, 4], [8, 1], [6, 1]], [[16, 2], [11, 2], [8, 2], [4, 2]], [[8, 9], [6, 1]], [[8, 8], [4, 2], [3, 2]], [[8, 5], [6, 1], [4, 8]], [[8, 8], [2, 6], [1, 2]], [[8, 4], [6, 2], [5, 2], [4, 4], [2, 4]], [[8, 1], [6, 9], [2, 8]], [[8, 2], [7, 4], [5, 2], [4, 2], [3, 4], [1, 4]], [[4, 18], [3, 2]], [[4, 16], [2, 6], [1, 2]], [[4, 16], [2, 6], [1, 2]], [[4, 16], [2, 4], [1, 6]], [[4, 10], [3, 2], [2, 16]], [[4, 16], [1, 14]], [[4, 8], [3, 6], [2, 10], [1, 8]], [[4, 2], [3, 18], [1, 16]], [[2, 38], [1, 2]], [[2, 32], [1, 14]], [[2, 22], [1, 34]]];

#ords:=[];
ords:=[ 16, 16, 8, 8, 8, 8, 8, 8, 8, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2 ];

return [reps,tori,labels,I,II,ords,blocks,mizuno];
