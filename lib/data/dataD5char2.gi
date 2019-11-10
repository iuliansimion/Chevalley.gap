
local reps,tori,labels,I,II,ords,blocks;


#......Ross 
reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1]],    # D_5
       [[5,1],[4,1],[9,1],[7,1],[1,1]]     # D_5(a_1)
       ];

I:=[[],[]];

#
# The parabolic where the representative is distinguished
#
II:=[[],
     []];

labels:=["D_5",
         "D_5(a_1)"
         ];

tori:=[
       [],
       []
    ];

blocks:=[];

ords:=[];

return [reps,tori,labels,I,II,ords,blocks];
