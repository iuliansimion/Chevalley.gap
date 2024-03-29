
local reps,tori,labels,I,II,ords,mizuno,blocks;

mizuno:=[[ 1, 2, 3, 4, 5, 6, 7,
           8, 9, 10, 11,
           12, 13, 14, 15,
           17, 16, 18, 19,
           20, 21, 22, 24,
           23, 25, 26, 27,
           28, 29, 31, 30,
           32, 33, 34, 35,
           36, 37, 38, 39,
           40, 41, 42, 43,
           44, 45, 46, 47,
           48, 49, 50, 51,
           52, 53, 54, 55,
           56, 57, 58, 59,
           60, 61, 62, 63 ],
          []];

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],            # E_7
       [[1,1],[3,1],[10,1],[9,1],[5,1],[6,1],[7,1]],           # E_7(a_1)
       [[1,1],[2,1],[3,1],[9,1],[11,1],[12,1],[13,1]],         # E_7(a_2)      ? 3/8
       [[1,1],[9,1],[10,1],[17,1],[22,1],[12,1],[7,1]],        # D_6+A_1
       [[1,1],[3,1],[9,1],[11,1],[12,1],[13,1]],               # E_6           ? 3/8
       [[8,1],[9,1],[11,1],[16,1],[12,1],[13,1]],              # E_6(a_1)
       [[1,1],[15,1],[16,1],[17,1],[6,1],[7,1]],               # D_6
       [[1,1],[15,1],[16,1],[17,1],[18,1],[23,1],[13,1]],      # D_6(a_1)+A_1
       [[14,1],[15,1],[16,1],[17,1],[12,1],[13,1]],            # A_6
       [[1,1],[15,1],[17,1],[23,1],[24,1],[7,1]],              # D_6(a_1)
       [[1,1],[15,1],[16,1],[17,1],[18,1],[19,1]],             # D_5+A_1
       [[14,1],[15,1],[27,1],[17,1],[18,1],[19,1],[23,1]],     # D_6(a_2)+A_1
       [[1,1],[15,1],[16,1],[18,1],[19,1]],                    # D_5
       [[8,1],[15,1],[16,1],[20,1],[24,1],[25,1]],             # (A_5+A_1)'
       [[15,1],[20,1],[21,1],[23,1],[13,1],[17,1]],            # D_6(a_2)
       [[20,1],[21,1],[23,1],[24,1],[28,1],[7,1]],             # (A_5+A_1)''
       [[28,1],[12,1],[13,1],[20,1],[21,1]],                   # A_5'
       [[14,1],[22,1],[23,1],[24,1],[25,1],[19,1]],            # D_5(a_1)+A_1
       [[20,1],[21,1],[23,1],[24,1],[7,1]],                    # A_5''
       [[20,1],[21,1],[22,1],[23,1],[24,1],[25,1]],            # A_4+A_2
       [[8,1],[28,1],[24,1],[25,1],[30,1]],                    # D_5(a_1)
       [[20,1],[21,1],[24,1],[30,1]],                          # A_4
       [[20,1],[21,1],[24,1],[28,1],[30,1]],                   # A_4+A_1
       [[1,1],[28,1],[29,1],[30,1],[31,1]],                    # D_4+A_1
       [[26,1],[27,1],[28,1],[29,1],[30,1],[31,1]],            # A_3+A_2+A_1
       [[1,1],[28,1],[29,1],[30,1]],                           # D_4
       [[27,1],[29,1],[30,1],[31,1],[32,1],[37,1]],            # A_3+A_2
       [[27,1],[29,1],[30,1],[31,1],[32,1]],                   # (A_3+A_2)_2
       [[28,1],[30,1],[31,1],[33,1],[34,1]],                   # D_4(a_1)+A_1
       [[28,1],[30,1],[33,1],[34,1]],                          # D_4(a_1)
       [[30,1],[31,1],[32,1],[33,1],[40,1]],                   # A_3+2A_1
       [[26,1],[27,1],[40,1],[41,1]],                          # (A_3+A_1)'
       [[30,1],[31,1],[32,1],[33,1]],                          # (A_3+A_1)''
       [[20,1],[21,1],[49,1]],                                 # A_3
       [[34,1],[36,1],[37,1],[38,1],[40,1]],                   # 2A_2+A_1
       [[34,1],[36,1],[38,1],[40,1]],                          # 2A_2
       [[37,1],[38,1],[39,1],[40,1],[41,1]],                   # A_2+3A_1
       [[42,1],[43,1],[44,1],[45,1]],                          # A_2+2A_1
       [[44,1],[46,1],[49,1]],                                 # A_2+A_1
       [[44,1],[46,1]],                                        # A_2
       [[47,1],[48,1],[49,1],[53,1]],                          # 4A_1
       [[53,1],[54,1],[55,1]],                                 # (3A_1)'
       [[47,1],[48,1],[49,1]],                                 # (3A_1)''
       [[58,1],[59,1]],                                        # 2A_1
       [[63,1]]                                                # A_1
       ];

labels:=["E_7",
         "E_7(a_1)",
         "E_7(a_2)",
         "D_6+A_1",
         "E_6",
         "E_6(a_1)",
         "D_6",
         "D_6(a_1)+A_1",
         "A_6",
         "D_6(a_1)",
         "D_5+A_1",
         "D_6(a_2)+A_1",
         "D_5",
         "(A_5+A_1)'",
         "D_6(a_2)",
         "(A_5+A_1)''",
         "A_5'",
         "D_5(a_1)+A_1",
         "A_5''",
         "A_4+A_2",
         "D_5(a_1)",
         "A_4",
         "A_4+A_1",
         "D_4+A_1",
         "A_3+A_2+A_1",
         "D_4",
         "A_3+A_2",
         "(A_3+A_2)_2",
         "D_4(a_1)+A_1",
         "D_4(a_1)",
         "A_3+2A_1",
         "(A_3+A_1)'",
         "(A_3+A_1)''",
         "A_3",
         "2A_2+A_1",
         "2A_2",
         "A_2+3A_1",
         "A_2+2A_1",
         "A_2+A_1",
         "A_2",
         "4A_1",
         "(3A_1)'",
         "(3A_1)''",
         "2A_1",
         "A_1",
         ];

I:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

II:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

tori:=[ [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ], [  ] ];

#blocks:=[];
blocks:=[[[32, 1], [26, 1], [22, 1], [18, 1], [16, 1], [10, 1], [8, 1], [1, 1]], [[16, 7], [14, 1], [6, 1], [1, 1]], [[16, 6], [10, 2], [8, 1], [6, 1], [2, 1], [1, 1]], [[16, 3], [14, 1], [10, 2], [8, 6], [2, 1], [1, 1]], [[16, 6], [10, 2], [8, 1], [6, 1], [1, 3]], [[16, 2], [13, 2], [11, 2], [9, 2], [8, 2], [5, 2], [4, 2], [1, 1]], [[16, 1], [14, 3], [10, 4], [8, 1], [6, 3], [2, 3], [1, 3]], [[8, 15], [6, 1], [4, 1], [2, 1], [1, 1]], [[8, 14], [7, 2], [3, 2], [1, 1]], [[8, 15], [6, 1], [4, 1], [1, 3]], [[8, 15], [6, 1], [2, 3], [1, 1]], [[8, 12], [6, 2], [4, 4], [3, 2], [2, 1], [1, 1]], [[8, 15], [6, 1], [2, 2], [1, 3]], [[8, 12], [5, 4], [4, 2], [3, 2], [1, 3]], [[8, 10], [6, 6], [2, 7], [1, 3]], [[8, 10], [6, 6], [2, 7], [1, 3]], [[8, 10], [6, 6], [2, 6], [1, 5]], [[8, 7], [6, 3], [4, 14], [2, 1], [1, 1]], [[8, 10], [6, 6], [2, 1], [1, 15]], [[8, 6], [7, 2], [5, 4], [4, 12], [1, 3]], [[8, 7], [6, 3], [4, 14], [1, 3]], [[8, 2], [7, 6], [5, 8], [4, 2], [3, 6], [1, 9]], [[8, 4], [7, 2], [6, 4], [5, 4], [4, 6], [3, 2], [2, 6], [1, 1]], [[8, 1], [6, 15], [2, 15], [1, 5]], [[4, 30], [3, 2], [2, 3], [1, 1]], [[8, 1], [6, 15], [2, 14], [1, 7]], [[4, 30], [3, 2], [2, 2], [1, 3]], [[4, 30], [3, 2], [2, 2], [1, 3]], [[4, 30], [3, 2], [2, 1], [1, 5]], [[4, 30], [3, 2], [1, 7]], [[4, 26], [2, 13], [1, 3]], [[4, 26], [2, 12], [1, 5]], [[4, 26], [2, 7], [1, 15]], [[4, 26], [2, 6], [1, 17]], [[4, 24], [3, 4], [2, 10], [1, 5]], [[4, 20], [3, 12], [1, 17]], [[4, 14], [3, 6], [2, 29], [1, 1]], [[4, 14], [3, 6], [2, 28], [1, 3]], [[4, 10], [3, 14], [2, 18], [1, 15]], [[4, 2], [3, 30], [1, 35]], [[2, 63], [1, 7]], [[2, 62], [1, 9]], [[2, 53], [1, 27]], [[2, 52], [1, 29]], [[2, 34], [1, 65]]];



#ords:=[];
ords:=[ 32, 16, 16, 16, 16, 16, 16, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 8, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2 ];

return [reps,tori,labels,I,II,ords,blocks,mizuno];
