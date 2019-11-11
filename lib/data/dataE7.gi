
local reps,tori,labels,I,II,ords;

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],
       [[1,1],[3,1],[10,1],[9,1],[5,1],[6,1],[7,1]],
       [[1,1],[2,1],[3,1],[9,1],[11,1],[12,1],[13,1]],
       [[15,1],[1,1],[17,1],[6,1],[7,1],[16,1],[4,1]],
       [[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],
       [[3,1],[5,1],[1,1],[6,1],[10,1],[11,1],[2,1]],
       [[7,1],[6,1],[5,1],[4,1],[2,1],[3,1]],
       [[15,1],[1,1],[17,1],[13,1],[23,1],[7,1],[16,1],[4,1]],
       [[7,1],[6,1],[5,1],[9,1],[10,-1],[2,1],[3,1]],
       [[1,1],[3,1],[4,1],[2,1],[5,1],[7,1]],
       [[1,1],[3,1],[4,1],[5,1],[6,1],[7,1]],
       [[21,1],[23,1],[7,1],[24,1],[20,1],[4,1],[22,1]],
       [[1,1],[3,1],[4,1],[2,1],[5,1]],
       [[15,1],[1,1],[17,1],[6,1],[16,1],[4,1]],
       [[7,1],[12,1],[9,1],[10,-1],[11,1],[2,1],[3,1]],
       [[1,1],[3,1],[9,1],[11,1],[2,1],[5,1],[7,1]],
       
       [[2,1],[4,1],[5,1],[6,1],[7,1],[1,1]],
       [[1,1],[3,1],[4,1],[5,1],[6,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1],[7,1]],
       [[1,1],[3,1],[9,1],[11,1],[2,1],[5,1]],
       [[1,1],[3,1],[4,1],[2,1],[6,1]],
       [[3,1],[4,1],[2,1],[5,1],[7,1]],
       [[2,1],[4,1],[5,1],[6,1],[7,1]],
       [[5,1],[6,1],[7,1],[1,1],[3,1],[2,1]],
       [[1,1],[3,1],[4,1],[2,1]],
       [[3,1],[4,1],[2,1],[6,1],[7,1]],
       [[3,1],[9,1],[11,1],[2,1],[5,1],[7,1]],
       [[3,1],[4,1],[2,1],[5,1]],
       [[5,1],[6,1],[7,1],[2,1],[3,1]],
       [[3,1],[9,1],[11,1],[2,1],[5,1]],
       [[1,1],[3,1],[4,1],[6,1]],
       [[1,1],[3,1],[5,1],[6,1],[2,1]],
       [[5,1],[6,1],[7,1],[2,1]],
       [[1,1],[3,1],[2,1],[5,1],[7,1]],
       [[1,1],[3,1],[5,1],[6,1]],
       [[1,1],[3,1],[4,1]],
       [[2,1],[4,1],[1,1],[6,1]],
       [[1,1],[3,1],[2,1]],
       [[2,1],[3,1],[5,1],[7,1]],
       [[1,1],[3,1]],
       [[1,1],[4,1],[6,1]],
       [[2,1],[5,1],[7,1]],
       [[1,1],[6,1]],
       [[1,1]]];

I:=[[],[4],[4,6],[2,3,5],[],[4],[],[2,3,5,6],[4],[],[],[1,2,3,5,6],[],[2,3,5],
    [4,5],#??? D_6(a_2)
    [4],#??? D_5(a_1)A_1 
    [],[],[],
    [4],# D_5(a_1) check this also
    [],[],[],[],[],[],
    [4],# D_4(a_1)A_1
    [],[],
    [4],# D_4(a_1)
    [],[],[],[],[],[],[],[],[],[],[],[],[],[]
    ];


#
# The parabolic where the representative is distinguished
#
II:=[[1,2,3,4,5,6,7],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5,6],
     [1,2,3,4,5,6],
     [2,3,4,5,6,7],
     [1,2,3,4,5,6,7],
     [2,3,4,5,6,7],
     [1,2,3,4,5,7],
     [1,3,4,5,6,7],
     [1,2,3,4,5,6,7],
     [1,2,3,4,5],
     [1,2,3,4,5,6],
     [2,3,4,5,6,7],
     [1,2,3,4,5,7],
     
     [1,2,4,5,6,7],
     [1,3,4,5,6],
     [1,2,3,4,6,7],
     [1,2,3,4,5],
     [1,2,3,4,6],
     [2,3,4,5,7],
     [2,4,5,6,7],
     [1,2,3,5,6,7],
     [1,2,3,4],
     [2,3,4,6,7],
     [2,3,4,5,7],
     [2,3,4,5],
     [2,3,5,6,7],
     [2,3,4,5],
     [1,3,4,6],
     [1,2,3,5,6],
     [2,5,6,7],
     [1,2,3,5,7],
     [1,3,5,6],
     [1,3,4],
     [1,2,4,6],
     [1,2,3],
     [2,3,5,7],
     [1,3],
     [1,4,6],
     [2,5,7],
     [1,6],
     [1]];

labels:=["E_7","E_7(a_1)","E_7(a_2)","E_7(a_3)","E_6","E_6(a_1)","D_6","E_7(a_4)","D_6(a_1)","D_5A_1","A_6","E_7(a_5)","D_5","E_6(a_3)","D_6(a_2)","D_5(a_1)A_1",
         "A_5A_1","(A_5)1","A_4A_2","D_5(a_1)","A_4A_1","D_4A_1","(A_5)2","A_3A_2A_1","A_4","A_3A_2","D_4(a_1)A_1","D_4","A_3A_1^2","D_4(a_1)","(A_3A_1)1","A_2^2A_1","(A_3A_1)2","A_2A_1^3","A_2^2","A_3","A_2A_1^2","A_2A_1","A_1^4","A_2","(A_1^3)1","(A_1^3)2","A_1^2","A_1"];

tori:=[
       [2,2,2,2,2,2,2],
       [2,2,2,0,2,2,2],
       [2,2,2,0,2,0,2],
       [2,0,0,2,0,2,2],
       [2,2,2,2,2,2,-16],
       [2,2,2,0,2,2,-12],
       [-15,2,2,2,2,2,2],
       [2,0,0,2,0,0,2],
       [-11,2,2,0,2,2,2],
       [2,2,2,2,2,-11,2],
       [2,-12,2,2,2,2,2],
       [0,0,0,2,0,0,2],
       [2,2,2,2,2,-10,0],
       [2,0,0,2,0,2,-8],
       [-9,2,2,0,2,0,2],
       [2,2,2,0,2,-8,2],
       [2,2,-9,2,2,2,2],
       [2,-9,2,2,2,2,-5],
       [2,2,2,2,-8,2,2],
       [2,2,2,0,2,-7,0],
       [2,2,2,2,-7,2,-1],
       [-6,2,2,2,2,-7,2],
       [0,2,-8,2,2,2,2],
       
       [2,2,2,-6,2,2,2],
       [2,2,2,2,-6,0,0],
       [-3,2,2,2,-6,2,2],
       [-4,2,2,0,2,-5,2],
       [-6,2,2,2,2,-6,0],
       [-1,2,2,-5,2,2,2],
       [-4,2,2,0,2,-4,0],
       [2,-3,2,2,-4,2,-1],
       [2,2,2,-5,2,2,-2],
       [0,2,0,-4,2,2,2],
       [2,2,2,-4,2,-2,2],
       [2,0,2,-4,2,2,-2],
       [2,-3,2,2,-3,0,0],
       [2,2,-3,2,-3,2,-1],
       [2,2,2,-3,0,0,0],
       [-1,2,2,-3,2,-2,2],
       [2,0,2,-2,0,0,0],
       [2,-1,-2,2,-2,2,-1],
       [0,2,0,-2,2,-2,2],
       [2,0,-1,0,-1,2,-1],
       [2,0,-1,0,0,0,0],
    ];

ords:=[];

return [reps,tori,labels,I,II,ords];