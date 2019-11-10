
local reps,tori,labels,I,II,ords,blocks;

reps:=[[[1,1],[2,1]],
       [[2,1],[5,1]],
       [[1,1]],
       [[2,1]]];

I:=[[],[1],[],[]];

#
# The parabolic where the representative is distinguished
#
II:=[[1,2],
     [1,2],
     [1],
     [2]];

labels:=["G_2","G_2(a_1)","\\tilde A_1","A_1"];

tori:=[
    [2,2],
    [0,2],
    [2,-3],
    [-1,2]
    ];

blocks:=[[[8, 1], [6, 1]], [[4, 2], [3, 2]], [[2, 6], [1, 2]], [[2, 6], [1, 2]]];

#ords:=[];
ords:=[8,4,2,2];


return [reps,tori,labels,I,II,ords,blocks];
