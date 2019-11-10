
local reps,tori,labels,I,II,ords,blocks;


#......Ross 
reps:=[[[1,1],[2,1],[3,1]],    # C_3
       [[3,1],[1,1],[7,1]]     # C_3(a_1)
       ];

I:=[[1,2,3],
    [1,2,3]
    ];

#
# The parabolic where the representative is distinguished
#
II:=[[],
     [2]
     ];

labels:=["C_3",
         "C_3(a_1)"
         ];

tori:=[
       [],
       []
    ];

blocks:=[];

ords:=[];

return [reps,tori,labels,I,II,ords,blocks];
