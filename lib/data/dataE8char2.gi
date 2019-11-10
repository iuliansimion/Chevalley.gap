
local reps,tori,labels,I,II,ords;

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],
    [[1,1],[2,1],[10,1],[11,1],[5,1],[6,1],[7,1],[8,1]],
    [[1,1],[2,1],[3,1],[10,1],[12,1],[13,1],[14,1],[8,1]],
    [[8,1],[18,1],[7,1],[6,1],[19,1],[1,1],[17,1],[4,1]],
    [[18,1],[6,1],[19,1],[1,1],[17,1],[21,1],[4,1],[8,1]],
    [[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],
    [[8,1],[7,1],[14,1],[26,1],[19,1],[1,1],[17,1],[4,1]],
    [[18,1],[22,1],[19,1],[1,1],[17,1],[20,1],[21,1],[4,1],[6,1]],
    [[1,1],[2,1],[11,1],[10,1],[5,1],[6,1],[7,1]],
    [[18,1],[8,1],[31,1],[7,1],[33,1],[4,1],[19,1],[23,1]],
    [[8,1],[7,1],[6,1],[5,1],[4,1],[2,1],[3,1]],
    [[18,1],[31,1],[7,1],[33,1],[4,1],[29,1],[23,1],[19,1]],
    [[1,1],[2,1],[3,1],[10,1],[12,1],[13,1],[14,1]],
    [[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[8,1]],

    [[16,1],[25,1],[27,1],[26,1],[21,1],[28,1],[15,1]], ################ (D_7(a_1))_2 Mizuno
    [[8,1],[7,1],[6,1],[5,1],[10,1],[11,-1],[2,1],[3,1]],
    [[31,1],[33,1],[18,1],[4,1],[39,-1],[41,1],[8,1],[19,1],[23,1]],
    [[17,1],[1,1],[19,1],[6,1],[7,1],[18,1],[4,1]],
    [[3,1],[5,1],[1,1],[6,1],[11,1],[12,1],[2,1],[8,1]],
       [[1,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],
       [[8,1],[7,1],[13,1],[10,1],[11,-1],[12,1],[2,1],[3,1]],
       [[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],
       [[7,1],[6,1],[5,1],[4,1],[2,1],[3,1]],
       [[30,1],[32,1],[31,1],[33,1],[35,1],[34,1],[15,1]], ################ (D_5A_2))_2 Mizuno
       [[1,1],[3,1],[4,1],[2,1],[5,1],[7,1],[8,1]],
       [[3,1],[5,1],[1,1],[6,1],[11,1],[12,1],[2,1]],
       [[17,1],[1,1],[19,1],[14,1],[26,1],[7,1],[18,1],[4,1]],
       [[2,1],[4,1],[5,1],[6,1],[7,1],[8,1],[1,1]],
       [[7,1],[6,1],[5,1],[10,1],[11,-1],[2,1],[3,1]],
       [[2,1],[4,1],[5,1],[6,1],[7,1],[8,1]],
       [[47,1],[49,1],[5,1],[45,1],[44,1],[42,1],[27,1],[46,1]],

       [[1,1],[3,1],[4,1],[2,1],[5,1],[7,1]],
       [[24,1],[26,1],[7,1],[27,1],[23,1],[4,1],[25,1]],
       [[17,1],[1,1],[19,1],[6,1],[18,1],[4,1],[8,1]],
       [[7,1],[13,1],[10,1],[11,-1],[12,1],[2,1],[3,1]],
       [[1,1],[3,1],[10,1],[12,1],[2,1],[5,1],[7,1],[8,1]],
       [[2,1],[4,1],[5,1],[6,1],[7,1],[1,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1],[7,1],[8,1]],
       [[1,1],[3,1],[4,1],[2,1],[5,1]],
       [[17,1],[1,1],[19,1],[6,1],[18,1],[4,1]],
       [[3,1],[4,1],[2,1],[5,1],[7,1],[8,1]],
       [[5,1],[6,1],[7,1],[8,1],[1,1],[3,1],[2,1]],
       [[1,1],[3,1],[10,1],[12,1],[2,1],[5,1],[7,1]],
       [[1,1],[3,1],[4,1],[5,1],[6,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1],[7,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1],[8,1]],
       [[1,1],[3,1],[10,1],[12,1],[2,1],[5,1]],

       [[1,1],[3,1],[4,1],[6,1],[7,1],[8,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1]],
       [[3,1],[10,1],[12,1],[2,1],[5,1],[7,1],[8,1]],
       [[3,1],[4,1],[2,1],[5,1],[7,1]],
       [[5,1],[6,1],[7,1],[1,1],[3,1],[2,1]],
       [[1,1],[3,1],[4,1],[2,1]],
       [[3,1],[4,1],[2,1],[6,1],[7,1]], ################ (A_3A_2))_2 Mizuno RECHECK this
       [[3,1],[4,1],[2,1],[6,1],[7,1]],
       [[3,1],[10,1],[12,1],[2,1],[5,1],[7,1]],
       [[5,1],[6,1],[7,1],[2,1],[3,1]],
       [[1,1],[3,1],[5,1],[6,1],[2,1],[8,1]],
       [[3,1],[4,1],[2,1],[5,1]],
       [[3,1],[10,1],[12,1],[2,1],[5,1]],
       [[1,1],[3,1],[4,1],[6,1]],
       [[1,1],[3,1],[5,1],[6,1],[2,1]],
       [[1,1],[3,1],[5,1],[6,1]],
       [[1,1],[3,1],[2,1],[5,1],[7,1]],
       [[1,1],[3,1],[4,1]],
       [[2,1],[4,1],[1,1],[6,1]],
       [[1,1],[3,1],[2,1]],
       [[2,1],[3,1],[5,1],[7,1]],
       [[1,1],[3,1]],
       [[1,1],[4,1],[6,1]],
       [[1,1],[6,1]],
       [[1,1]]
       ];


I:=[[],
    [4], #??? E_8(a_1)
    [4,6], #??? E_8(a_2)
    [2,3,5], # E_8(a_3)
    [2,3,5,7], # E_8(a_4)
    [],
    [2,3,5,6], # E_8(b_4)
    [2,3,5,6,8], # E_8(a_5)
    [4], # E_7(a_1)
    [1,2,3,5,6], # E_8(b_5)
    [],
    [1,2,3,5,6,8], # E_8(a_6)
    [4,6], #??? E_7(a_2)
    [],
    
    [], ################ (D_7(a_1))_2 Mizuno
    [4], # D_7(a_1)
    [1,2,3,5,6,7], # E_8(b_6)
    [2,3,5], # E_7(a_3)
    [4], # E_6(a_1)A_1
    [],
    [4,5], #??? D_7(a_2)
    
    [],[],
    [], ################ (D_5A_2))_2 Mizuno
    [],
    [4], # E_6(a_1)
    [2,3,5,6], # E_7(a_4)
    [],
    [4],# D_6(a_1)
    [],
    [1,2,3,4,6,7,8], # E_8(a_7)
    [],
    [1,2,3,5,6],# E_7(a_5)
    [2,3,5],# E_6(a_3)A_1
    [4,5],#??? D_6(a_2)
    [4],# D_5(a_1)A_2 
    [],[],[],
    [2,3,5],# E_6(a_3)
    [],[],
    [4],# D_5(a_1)A_1 
    [],[],[],
    
    [4],# D_5(a_1) check this also
    [],[],
    [4],# D_4(a_1)A_2
    [],[],[],
    [],################ (D_5A_2))_2 Mizuno
    [],
    [4],# D_4(a_1)A_1
    [],[],[],
    [4],# D_4(a_1)
    [],[],[],[],[],[],[],[],[],[],[],[]
    ];


#
# The parabolic where the representative is distinguished
#
II:=[[1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,7,8],
     [2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,8],

     [], ################ (D_7(a_1))_2 Mizuno
     [2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,8],
     [1,3,4,5,6,7,8],
     [2,3,4,5,6,7,8],
     [1,2,3,4,5,6],
     [2,3,4,5,6,7],
     [], ################ (D_5A_2))_2 Mizuno
     [1,2,3,4,5,7,8],
     [1,2,3,4,5,6],
     [1,2,3,4,5,6,7],
     [1,2,4,5,6,7,8],
     [2,3,4,5,6,7],
     [2,4,5,6,7,8],
     [1,2,3,4,5,6,7,8],

     [1,2,3,4,5,7],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,8],
     [2,3,4,5,6,7],
     [1,2,3,4,5,7,8],
     [1,2,4,5,6,7],
     [1,2,3,4,6,7,8],
     [1,2,3,4,5],
     [1,2,3,4,5,6],
     [2,3,4,5,7,8],
     [1,2,3,5,6,7,8],
     [1,2,3,4,5,7],
     [1,3,4,5,6],
     [1,2,3,4,6,7],
     [1,2,3,4,6,8],
     [1,2,3,4,5],

     [1,3,4,6,7,8],
     [1,2,3,4,6],
     [2,3,4,5,7,8],
     [2,3,4,5,7],
     [1,2,3,5,6,7],
     [1,2,3,4],
     [],################ (D_3A_2))_2 Mizuno
     [2,3,4,6,7],
     [2,3,4,5,7],
     [2,3,5,6,7],
     [1,2,3,5,6,8],
     [2,3,4,5],
     [2,3,4,5],
     [1,3,4,6],
     [1,2,3,5,6],
     [1,3,5,6],
     [1,2,3,5,7],
     [1,3,4],
     [1,2,4,6],
     [1,2,3],
     [2,3,5,7],
     [1,3],
     [1,4,6],
     [1,6],
     [1]
     ];
     

labels:=["E_8","E_8(a_1)","E_8(a_2)","E_8(a_3)","E_8(a_4)","E_7","E_8(b_4)","E_8(a_5)","E_7(a_1)","E_8(b_5)","D_7","E_8(a_6)","E_7(a_2)","E_6A_1",
         "(D_7(a_1))^{(2)}","D_7(a_1)","E_8(b_6)","E_7(a_3)","E_6(a_1)A_1","A_7","D_7(a_2)","E_6","D_6","(D_5A_2)^{(2)}","D_5A_2","E_6(a_1)","E_7(a_4)","A_6A_1","D_6(a_1)","A_6","E_8(a_7)",
         "D_5A_1","E_7(a_5)","E_6(a_3)A_1","D_6(a_2)","D_5(a_1)A_2","A_5A_2","A_4A_3","D_5","E_6(a_3)","D_4A_2","A_4A_2A_1","D_5(a_1)A_1","A_5","A_4A_2","A_4A_1^2","D_5(a_1)",
         "A_3^2","A_4A_1","D_4(a_1)A_2","D_4A_1","A_3A_2A_1","A_4","(A_3A_2)^{(2)}","A_3A_2","D_4(a_1)A_1","A_3A_1^2","A_2^2A_1^2","D_4","D_4(a_1)","A_3A_1","A_2^2A_1","A_2^2","A_2A_1^3","A_3","A_2A_1^2","A_2A_1","A_1^4","A_2","A_1^3","A_1^2","A_1"];

tori:=[
    [2,2,2,2,2,2,2,2],
    [2,2,2,0,2,2,2,2],
    [2,2,2,0,2,0,2,2],
    [2,0,0,2,0,2,2,2],
    [2,0,0,2,0,2,0,2],
    [2,2,2,2,2,2,2,-27],
    [2,0,0,2,0,0,2,2],
    [2,0,0,2,0,0,2,0],
    [2,2,2,0,2,2,2,-21],
    [0,0,0,2,0,0,2,2],
    [-21,2,2,2,2,2,2,2],
    [0,0,0,2,0,0,2,0],
    [2,2,2,0,2,0,2,-17],
    [2,2,2,2,2,2,-17,2],

    [], ################ (D_7(a_1))_2 Mizuno
    [-16,2,0,2,2,2,2,2],
    [0,0,0,2,0,0,0,2],
    [2,0,0,2,0,2,2,-15],
    [2,2,2,0,2,2,-13,2],
    [2,-15,2,2,2,2,2,2],
    [-13,2,2,0,2,0,2,2],
    [2,2,2,2,2,2,-16,0],
    [-15,2,2,2,2,2,2,-10],
    [], ################ (D_5A_2))_2 Mizuno
    [2,2,2,2,2,-12,2,2],
    [2,2,2,0,2,2,-12,0],
    [2,0,0,2,0,0,2,-11],
    [2,2,-11,2,2,2,2,2],
    [-11,2,2,0,2,2,2,-8],
    [0,2,-10,2,2,2,2,2],
    [0,0,0,0,2,0,0,0],

    [2,2,2,2,2,-11,2,-1],
    [0,0,0,2,0,0,2,-9],
    [2,0,0,2,0,2,-9,2],
    [-9,2,2,0,2,0,2,-6],
    [2,2,2,0,2,-9,2,2],
    [2,2,-9,2,2,2,2,-5],
    [2,2,2,2,-9,2,2,2],
    [2,2,2,2,2,-10,0,0],
    [2,0,0,2,0,2,-8,0],
    [-6,2,2,2,2,-8,2,2],
    [2,2,2,-7,2,2,2,2],
    [2,2,2,0,2,-8,2,-1],
    [2,-9,2,2,2,2,-5,0],
    [2,2,2,2,-8,2,2,-2],
    [2,2,2,2,-7,2,-2,2],
    [2,2,2,0,2,7,0,0],

    [2,-3,2,2,-6,2,2,2],
    [2,2,2,2,-7,2,-1,0],
    [-4,2,2,0,2,-6,2,2],
    [-6,2,2,2,2,-7,2,-1],
    [2,2,2,-6,2,2,2,-3],
    [2,2,2,2,-6,0,0,0],
    [], ################ (A_3A_2))_2 Mizuno
    [-3,2,2,2,-6,2,2,-2],
    [-4,2,2,0,2,-5,2,-1],
    [-1,2,2,-5,2,2,2,-3],
    [2,2,2,-5,2,2,-3,2],
    [-6,2,2,2,2,-6,0,0],
    [-4,2,2,0,2,-4,0,0],
    [2,-3,2,2,-4,2,-1,0],
    [2,2,2,-5,2,2,-2,0],
    [2,0,2,-4,2,2,-2,0],
    [2,2,2,-4,2,-2,2,-1],
    [2,-3,2,2,-3,0,0,0],
    [2,2,-3,2,-3,2,-1,0],
    [2,2,2,-3,0,0,0,0],
    [-1,2,2,-3,2,-2,2,-1],
    [2,2,0,-2,0,0,0,0],
    [2,-1,-2,2,-2,2,-1,0],
    [2,0,-1,0,-1,2,-1,0],
    [2,0,-1,0,0,0,0,0]
    ];

#ords:=[];
ords:=[ 32, 32, 32, 32, 16, 32, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 8, 16, 8, 8, 8, 16, 16, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 8, 4, 8, 4, 8, 4, 4, 4, 4, 4, 8, 4, 4, 4, 4, 4, 4, 4, 4, 2, 4, 2, 2, 2 ];

return [reps,tori,labels,I,II,ords];
