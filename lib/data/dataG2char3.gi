
local reps,tori,labels,I,II,ords,blocks;

reps:=[[[1,1],[2,1]],
       [[2,1],[5,1]],
       [[4,1],[6,1]],
       [[1,1]],
       [[2,1]]];

I:=[[],[1],[],[],[]];

#
# The parabolic where the representative is distinguished
#
II:=[[1,2],
     [1,2],
     [],
     [1],
     [2]];

labels:=["G_2","G_2(a_1)","(\\tilde A_1)^{(3)}","\\tilde A_1","A_1"];

tori:=[
    [2,2],
    [0,2],
    [],
    [2,-3],
    [-1,2]
    ];

blocks:=[[[9, 1], [5, 1]], [[3, 4], [2, 1]], [[3, 3], [2, 2], [1, 1]], [[3, 3], [1, 5]], [[3, 1], [2, 4], [1, 3]]];

#ords:=[];
ords:=[9,3,3,3,3];

return [reps,tori,labels,I,II,ords,blocks];
