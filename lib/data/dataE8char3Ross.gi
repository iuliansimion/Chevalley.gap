local reps,tori,labels,I,II,ords,blocks;

reps:=[[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],#E_8
[[1,1],[2,1],[10,1],[11,1],[5,1],[6,1],[7,1],[8,1]],#E_8(a_1)
[[1,1],[2,1],[3,1],[10,1],[12,1],[13,1],[14,1],[8,1]],#E_8(a_2)
[[7,1],[8,1],[9,1],[10,1],[11,1],[12,1],[13,1],[19,1]],#E_8(a_3)
[[9,1],[10,1],[11,1],[12,1],[13,1],[14,1],[15,1],[19,1]],#E_8(a_4)
[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],#E_7
[[7,1],[8,1],[9,1],[17,1],[18,1],[19,1],[20,1],[21,1]],#E_8(b_4)
[[9,1],[14,1],[15,1],[17,1],[18,1],[19,1],[20,1],[26,1]],#E_8(a_5)
[[1,1],[3,1],[10,1],[11,1],[5,1],[6,1],[7,1]],#E_7(a_1)
[[8,1],[16,1],[17,1],[18,1],[20,1],[21,1],[24,1],[33,1]],#E_8(b_5)
[[2,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],#D_7
[[4,1],[10,1],[12,1],[14,1],[15,1],[26,1],[27,1],[30,1]],#E_8(a_6)
[[1,1],[2,1],[3,1],[10,1],[12,1],[13,1],[14,1]],#E_7(a_2)
[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[8,1]],#E_6+A_1
#[[2,1],[3,1],[10,1],[12,1],[6,1],[7,1],[8,1],[83,1]],#(D_7(a_1))^{(2)}
[[2,1],[3,1],[10,1],[12,1],[6,1],[7,1],[8,1]],#D_7(a_1)
[[15,1],[22,1],[23,1],[24,1],[25,1],[26,1],[27,1],[28,1]],#E_8(b_6)
[[1,1],[4,1],[7,1],[12,1],[13,1],[17,1],[19,1]],#E_7(a_3)
[[1,1],[2,1],[11,1],[12,1],[5,1],[6,1],[8,1]],#E_6(a_1)+A_1
[[1,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1],[67,1]],#(A_7)^{(3)}
[[1,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],#A_7
[[2,1],[3,1],[10,1],[12,1],[13,1],[14,1],[8,1]],#D_7(a_2)
[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],#E_6
[[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],#D_6
#[[1,1],[2,1],[3,1],[4,1],[5,1],[7,1],[8,1],[51,1]],#(D_5+A_2)^{(2)}
[[1,1],[2,1],[3,1],[4,1],[5,1],[7,1],[8,1]],#D_5+A_2
[[1,1],[2,1],[11,1],[12,1],[5,1],[6,1]],#E_6(a_1)
[[1,1],[4,1],[7,1],[11,1],[25,1],[26,1],[27,1]],#E_7(a_4)
[[1,1],[2,1],[4,1],[5,1],[6,1],[7,1],[8,1]],#A_6+A_1
[[2,1],[3,1],[10,1],[12,1],[6,1],[7,1]],#D_6(a_1)
[[1,1],[3,1],[4,1],[5,1],[6,1],[7,1]],#A_6
[[30,1],[33,1],[35,1],[36,1],[40,1],[45,1],[53,1],[58,1]],#E_8(a_7)
[[1,1],[2,1],[3,1],[4,1],[5,1],[7,1]],#D_5+A_1
[[4,1],[11,1],[14,1],[16,1],[24,1],[25,1],[26,1]],#E_7(a_5)
[[4,1],[6,1],[9,1],[11,1],[18,1],[19,1],[8,1]],#E_6(a_3)+A_1
[[2,1],[3,1],[10,1],[12,1],[13,1],[14,1]],#D_6(a_2)
[[1,1],[10,1],[11,1],[2,1],[5,1],[7,1],[8,1]],#D_5(a_1)+A_2
[[1,1],[3,1],[4,1],[5,1],[6,1],[8,1]],#A_5+A_1
[[1,1],[3,1],[4,1],[2,1],[6,1],[7,1],[8,1]],#A_4+A_3
[[1,1],[2,1],[3,1],[4,1],[5,1]],#D_5
[[4,1],[6,1],[9,1],[11,1],[18,1],[19,1]],#E_6(a_3)
#[[2,1],[3,1],[4,1],[5,1],[7,1],[8,1],[63,1]],#(D_4+A_2)^{(2)}
[[2,1],[3,1],[4,1],[5,1],[7,1],[8,1]],#D_4+A_2
[[1,1],[3,1],[2,1],[5,1],[6,1],[7,1],[8,1]],#A_4+A_2+A_1
[[1,1],[10,1],[11,1],[2,1],[5,1],[7,1]],#D_5(a_1)+A_1
[[1,1],[3,1],[4,1],[5,1],[6,1]],#A_5
[[1,1],[3,1],[4,1],[2,1],[6,1],[7,1]],#A_4+A_2
[[1,1],[3,1],[4,1],[2,1],[6,1],[8,1]],#A_4+2A_1
[[1,1],[10,1],[11,1],[2,1],[5,1]],#D_5(a_1)
[[1,1],[3,1],[4,1],[6,1],[7,1],[8,1]],#2A_3
[[1,1],[3,1],[4,1],[5,1],[7,1]],#A_4+A_1
[[2,1],[3,1],[10,1],[12,1],[7,1],[8,1]],#D_4(a_1)+A_2
[[2,1],[3,1],[4,1],[5,1],[7,1]],#D_4+A_1
[[1,1],[3,1],[2,1],[5,1],[6,1],[7,1]],#A_3+A_2+A_1
[[1,1],[3,1],[4,1],[5,1]],#A_4
#[[1,1],[3,1],[4,1],[6,1],[7,1],[44,1]],#(A_3+A_2)^{(2)}
[[1,1],[3,1],[4,1],[6,1],[7,1]],#A_3+A_2
[[2,1],[3,1],[10,1],[12,1],[7,1]],#D_4(a_1)+A_1
[[1,1],[3,1],[4,1],[6,1],[8,1]],#A_3+2A_1
[[1,1],[3,1],[2,1],[5,1],[6,1],[8,1]],#2A_2+2A_1
[[2,1],[3,1],[4,1],[5,1]],#D_4
[[2,1],[3,1],[10,1],[12,1]],#D_4(a_1)
[[1,1],[3,1],[4,1],[6,1]],#A_3+A_1
[[1,1],[3,1],[2,1],[5,1],[6,1]],#2A_2+A_1
[[1,1],[3,1],[5,1],[6,1]],#2A_2
[[1,1],[3,1],[2,1],[5,1],[7,1]],#A_2+3A_1
[[1,1],[3,1],[4,1]],#A_3
[[1,1],[3,1],[5,1],[7,1]],#A_2+2A_1
[[1,1],[3,1],[5,1]],#A_2+A_1
[[1,1],[2,1],[5,1],[7,1]],#4A_1
[[1,1],[3,1]],#A_2
[[1,1],[2,1],[5,1]],#3A_1
[[1,1],[2,1]],#2A_1
[[1,1]]#A_1
];

labels:=["E_8",
"E_8(a_1)",
"E_8(a_2)",
"E_8(a_3)",
"E_8(a_4)",
"E_7",
"E_8(b_4)",
"E_8(a_5)",
"E_7(a_1)",
"E_8(b_5)",
"D_7",
"E_8(a_6)",
"E_7(a_2)",
"E_6+A_1",
#"(D_7(a_1))^{(2)}",
"D_7(a_1)",
"E_8(b_6)",
"E_7(a_3)",
"E_6(a_1)+A_1",
"(A_7)^{(3)}",
"A_7",
"D_7(a_2)",
"E_6",
"D_6",
#"(D_5+A_2)^{(2)}",
"D_5+A_2",
"E_6(a_1)",
"E_7(a_4)",
"A_6+A_1",
"D_6(a_1)",
"A_6",
"E_8(a_7)",
"D_5+A_1",
"E_7(a_5)",
"E_6(a_3)+A_1",
"D_6(a_2)",
"D_5(a_1)+A_2",
"A_5+A_1",
"A_4+A_3",
"D_5",
"E_6(a_3)",
#"(D_4+A_2)^{(2)}",
"D_4+A_2",
"A_4+A_2+A_1",
"D_5(a_1)+A_1",
"A_5",
"A_4+A_2",
"A_4+2A_1",
"D_5(a_1)",
"2A_3",
"A_4+A_1",
"D_4(a_1)+A_2",
"D_4+A_1",
"A_3+A_2+A_1",
"A_4",
#"(A_3+A_2)^{(2)}",
"A_3+A_2",
"D_4(a_1)+A_1",
"A_3+2A_1",
"2A_2+2A_1",
"D_4",
"D_4(a_1)",
"A_3+A_1",
"2A_2+A_1",
"2A_2",
"A_2+3A_1",
"A_3",
"A_2+2A_1",
"A_2+A_1",
"4A_1",
"A_2",
"3A_1",
"2A_1",
"A_1"
];

I:=[[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];#,[]];

II:=[[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];#,[]];

tori:=[[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];#,[]];

blocks:=[];
blocks:=[[[55, 1], [45, 1], [39, 1], [27, 3], [19, 1], [9, 1]], [[27, 8], [25, 1], [7, 1]], [[27, 6], [25, 1], [21, 1], [19, 1], [9, 2], [3, 1]], [[27, 4], [25, 1], [19, 1], [18, 2], [15, 1], [12, 2], [9, 2], [3, 1]], [[27, 2], [25, 1], [21, 2], [18, 2], [15, 2], [12, 2], [9, 3], [7, 1], [3, 1]], [[27, 3], [26, 2], [19, 1], [18, 2], [15, 1], [12, 2], [9, 2], [1, 3]], [[27, 1], [21, 1], [19, 2], [18, 4], [15, 1], [9, 8], [3, 1]], [[23, 2], [21, 1], [19, 1], [17, 1], [15, 3], [12, 4], [11, 2], [9, 1], [7, 1], [5, 1], [3, 3]], [[27, 1], [20, 2], [19, 1], [18, 4], [15, 1], [9, 8], [1, 3]], [[19, 1], [18, 4], [15, 1], [12, 2], [9, 12], [7, 1], [3, 1]], [[23, 1], [22, 2], [19, 1], [16, 2], [15, 1], [13, 3], [12, 2], [11, 1], [10, 2], [7, 1], [4, 2], [3, 1], [1, 3]], [[19, 1], [18, 2], [15, 3], [13, 3], [9, 9], [7, 1], [6, 2], [3, 3]], [[19, 1], [18, 4], [15, 1], [12, 2], [9, 11], [8, 2], [1, 3]], [[19, 1], [15, 8], [9, 9], [3, 8], [2, 2]], [[19, 1], [17, 2], [15, 3], [12, 2], [11, 4], [9, 5], [6, 4], [3, 4], [1, 1]], [[9, 25], [8, 2], [2, 2], [1, 3]], [[19, 1], [17, 1], [16, 2], [15, 2], [12, 2], [11, 2], [10, 4], [9, 3], [6, 4], [3, 2], [2, 2], [1, 3]], [[9, 26], [7, 1], [3, 1], [2, 2]], [[9, 25], [8, 2], [3, 1], [2, 2]], [[9, 25], [8, 2], [2, 2], [1, 3]], [[9, 23], [7, 1], [6, 2], [5, 2], [4, 2], [3, 1], [1, 1]], [[19, 1], [15, 8], [9, 9], [3, 7], [1, 7]], [[19, 1], [16, 4], [15, 1], [11, 5], [10, 4], [9, 2], [6, 4], [3, 1], [1, 10]], [[9, 21], [7, 2], [6, 4], [3, 7]], [[9, 26], [7, 1], [1, 7]], [[9, 20], [8, 2], [7, 1], [6, 4], [3, 6], [1, 3]], [[9, 19], [8, 2], [7, 4], [6, 2], [3, 6], [1, 3]], [[9, 19], [8, 4], [6, 4], [3, 5], [1, 6]], [[9, 19], [7, 8], [3, 5], [1, 6]], [[9, 14], [7, 2], [6, 8], [5, 6], [3, 10]], [[9, 19], [8, 2], [7, 4], [6, 2], [3, 1], [2, 6], [1, 6]], [[9, 13], [8, 2], [7, 1], [6, 8], [5, 3], [4, 6], [3, 6], [1, 3]], [[9, 10], [7, 1], [6, 16], [3, 17], [2, 2]], [[9, 13], [7, 5], [6, 4], [5, 5], [4, 8], [3, 3], [1, 6]], [[9, 9], [8, 2], [6, 16], [3, 17], [2, 2]], [[9, 9], [8, 2], [6, 16], [3, 16], [2, 2], [1, 3]], [[9, 7], [8, 2], [7, 6], [6, 6], [5, 6], [4, 6], [3, 10], [2, 2], [1, 3]], [[9, 19], [7, 8], [1, 21]], [[9, 10], [7, 1], [6, 16], [3, 16], [1, 7]], [[9, 8], [7, 7], [6, 12], [3, 16], [1, 7]], [[9, 3], [8, 2], [7, 1], [6, 18], [5, 3], [3, 25]], [[9, 5], [8, 6], [7, 4], [6, 12], [3, 11], [2, 8], [1, 6]], [[9, 9], [8, 2], [6, 16], [3, 15], [1, 10]], [[9, 3], [7, 5], [6, 16], [5, 3], [3, 24], [1, 3]], [[9, 1], [8, 4], [7, 3], [6, 12], [5, 7], [4, 4], [3, 17], [2, 4], [1, 4]], [[9, 3], [8, 8], [7, 6], [6, 10], [3, 8], [2, 8], [1, 15]], [[8, 4], [7, 6], [6, 4], [5, 10], [4, 16], [3, 6], [2, 4], [1, 10]], [[9, 1], [8, 2], [7, 7], [6, 8], [5, 9], [4, 6], [3, 12], [2, 6], [1, 9]], [[7, 1], [6, 14], [5, 6], [3, 42], [1, 1]], [[9, 2], [8, 6], [7, 13], [6, 6], [3, 2], [2, 14], [1, 21]], [[7, 1], [6, 14], [5, 3], [4, 6], [3, 37], [2, 2], [1, 3]], [[9, 1], [7, 11], [5, 21], [3, 11], [1, 24]], [[7, 1], [6, 12], [5, 5], [4, 8], [3, 34], [1, 10]], [[7, 1], [6, 8], [5, 12], [4, 6], [3, 28], [2, 8], [1, 9]], [[7, 1], [6, 6], [5, 11], [4, 14], [3, 19], [2, 12], [1, 13]], [[3, 80], [2, 4]], [[9, 2], [7, 25], [3, 1], [1, 52]], [[7, 1], [6, 2], [5, 24], [3, 27], [1, 28]], [[7, 1], [6, 2], [5, 15], [4, 18], [3, 10], [2, 14], [1, 24]], [[3, 79], [2, 2], [1, 7]], [[3, 78], [1, 14]], [[3, 70], [2, 14], [1, 10]], [[7, 1], [5, 11], [4, 32], [3, 1], [1, 55]], [[3, 65], [2, 16], [1, 21]], [[3, 58], [2, 20], [1, 34]], [[3, 44], [2, 40], [1, 36]], [[3, 57], [1, 77]], [[3, 31], [2, 50], [1, 55]], [[3, 14], [2, 64], [1, 78]], [[3, 1], [2, 56], [1, 133]]];

#ords:=[];
ords:=[ 81, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 9, 27, 9, 9, 9, 9, 27, 27, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 9, 9, 9, 3, 3, 3, 9, 3, 3, 3, 3, 3, 3, 3 ];

return [reps,tori,labels,I,II,ords,blocks];
