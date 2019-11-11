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
[[2,1],[3,1],[10,1],[12,1],[6,1],[7,1],[8,1],[83,1]],#(D_7(a_1))^{(2)}
[[2,1],[3,1],[10,1],[12,1],[6,1],[7,1],[8,1]],#D_7(a_1)
[[15,1],[22,1],[23,1],[24,1],[25,1],[26,1],[27,1],[28,1]],#E_8(b_6)
[[1,1],[4,1],[7,1],[12,1],[13,1],[17,1],[19,1]],#E_7(a_3)
[[1,1],[2,1],[11,1],[12,1],[5,1],[6,1],[8,1]],#E_6(a_1)+A_1
#[[1,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1],[67,1]],#(A_7)^{(3)}
[[1,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1]],#A_7
[[2,1],[3,1],[10,1],[12,1],[13,1],[14,1],[8,1]],#D_7(a_2)
[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1]],#E_6
[[2,1],[3,1],[4,1],[5,1],[6,1],[7,1]],#D_6
[[1,1],[2,1],[3,1],[4,1],[5,1],[7,1],[8,1],[51,1]],#(D_5+A_2)^{(2)}
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
[[2,1],[3,1],[4,1],[5,1],[7,1],[8,1],[63,1]],#(D_4+A_2)^{(2)}
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
[[1,1],[3,1],[4,1],[6,1],[7,1],[44,1]],#(A_3+A_2)^{(2)}
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
"(D_7(a_1))^{(2)}",
"D_7(a_1)",
"E_8(b_6)",
"E_7(a_3)",
"E_6(a_1)+A_1",
#"(A_7)^{(3)}",
"A_7",
"D_7(a_2)",
"E_6",
"D_6",
"(D_5+A_2)^{(2)}",
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
"(D_4+A_2)^{(2)}",
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
"(A_3+A_2)^{(2)}",
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

#blocks:=[];
blocks:=[[[32, 7], [24, 1]], [[32, 5], [28, 1], [16, 3], [12, 1]], [[32, 3], [26, 1], [16, 7], [14, 1]], [[32, 1], [30, 1], [24, 2], [22, 2], [16, 3], [14, 1], [8, 4]], [[16, 14], [12, 2]], [[32, 1], [26, 3], [22, 1], [18, 3], [16, 1], [10, 3], [8, 1], [2, 3], [1, 2]], [[16, 11], [14, 3], [10, 2], [6, 1], [2, 1], [1, 2]], [[16, 10], [14, 2], [8, 6], [6, 2]], [[16, 11], [14, 3], [10, 2], [6, 1], [2, 1], [1, 2]], [[16, 10], [12, 2], [10, 2], [8, 3], [6, 1], [4, 2], [3, 2]], [[16, 7], [12, 9], [4, 6], [2, 2]], [[16, 6], [13, 2], [8, 14], [7, 2]], [[16, 10], [10, 6], [8, 1], [6, 1], [2, 6], [1, 2]], [[16, 10], [10, 6], [8, 1], [6, 1], [2, 6], [1, 2]], [[16, 3], [14, 5], [10, 2], [8, 10], [6, 4], [2, 2], [1, 2]], [[16, 3], [14, 1], [12, 6], [10, 2], [8, 7], [6, 1], [4, 8]], [[16, 2], [15, 2], [12, 4], [11, 4], [8, 6], [7, 2], [4, 8]], [[16, 3], [14, 5], [10, 2], [8, 10], [6, 4], [2, 2], [1, 2]], [[16, 2], [14, 2], [13, 2], [12, 2], [11, 2], [10, 2], [9, 2], [8, 4], [6, 2], [5, 2], [4, 4], [2, 4]], [[8, 30], [4, 2]], [[8, 28], [6, 4]], [[16, 10], [10, 6], [8, 1], [6, 1], [1, 14]], [[16, 1], [14, 5], [10, 10], [8, 1], [6, 5], [2, 10], [1, 4]], [[8, 27], [6, 1], [4, 5], [2, 3]], [[8, 27], [6, 1], [4, 4], [3, 2], [2, 2]], [[16, 2], [13, 6], [11, 2], [9, 6], [8, 2], [5, 6], [4, 2], [1, 8]], [[8, 27], [6, 1], [4, 5], [2, 1], [1, 4]], [[8, 24], [7, 2], [6, 4], [4, 2], [3, 2], [2, 2]], [[8, 27], [6, 1], [4, 5], [2, 1], [1, 4]], [[8, 22], [7, 6], [5, 4], [3, 2], [1, 4]], [[8, 20], [7, 4], [4, 12], [3, 4]], [[8, 27], [6, 1], [2, 12], [1, 2]], [[8, 20], [6, 6], [4, 8], [3, 2], [2, 6], [1, 2]], [[8, 20], [6, 4], [5, 4], [4, 6], [3, 2], [2, 6], [1, 2]], [[8, 14], [6, 18], [2, 12], [1, 4]], [[8, 13], [6, 3], [4, 30], [3, 2]], [[8, 14], [6, 18], [2, 12], [1, 4]], [[8, 12], [7, 2], [6, 2], [4, 30], [3, 2]], [[8, 27], [6, 1], [2, 6], [1, 14]], [[8, 20], [5, 12], [4, 2], [3, 2], [1, 14]], [[8, 11], [6, 7], [4, 26], [2, 6], [1, 2]], [[8, 7], [6, 15], [4, 14], [3, 6], [2, 14]], [[8, 10], [7, 2], [6, 4], [5, 4], [4, 24], [2, 6], [1, 2]], [[8, 11], [6, 7], [4, 26], [2, 6], [1, 2]], [[8, 14], [6, 18], [2, 6], [1, 16]], [[8, 6], [7, 10], [5, 4], [4, 20], [3, 8], [1, 6]], [[8, 6], [7, 2], [6, 12], [5, 4], [4, 14], [3, 2], [2, 16]], [[8, 11], [6, 7], [4, 26], [1, 14]], [[4, 60], [2, 4]], [[8, 4], [7, 6], [6, 8], [5, 8], [4, 10], [3, 6], [2, 10], [1, 8]], [[4, 56], [3, 8]], [[8, 1], [6, 27], [2, 36], [1, 6]], [[4, 54], [3, 2], [2, 12], [1, 2]], [[8, 2], [7, 10], [5, 20], [4, 2], [3, 10], [1, 24]], [[4, 54], [3, 2], [2, 10], [1, 6]], [[4, 50], [3, 10], [2, 6], [1, 6]], [[4, 54], [3, 2], [2, 10], [1, 6]], [[4, 46], [2, 30], [1, 4]], [[4, 44], [3, 4], [2, 28], [1, 4]], [[8, 1], [6, 27], [2, 26], [1, 26]], [[4, 54], [3, 2], [1, 26]], [[4, 46], [2, 24], [1, 16]], [[4, 40], [3, 12], [2, 18], [1, 16]], [[4, 28], [3, 36], [1, 28]], [[4, 26], [3, 6], [2, 62], [1, 2]], [[4, 46], [2, 10], [1, 44]], [[4, 22], [3, 14], [2, 52], [1, 14]], [[4, 14], [3, 30], [2, 34], [1, 34]], [[2, 120], [1, 8]], [[4, 2], [3, 54], [1, 78]], [[2, 110], [1, 28]], [[2, 92], [1, 64]], [[2, 58], [1, 132]]];

#ords:=[];
ords:=[ 32, 32, 32, 32, 16, 32, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 8, 8, 16, 16, 8, 8, 16, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 8, 4, 8, 4, 8, 4, 4, 4, 4, 4, 8, 4, 4, 4, 4, 4, 4, 4, 4, 2, 4, 2, 2, 2 ];

return [reps,tori,labels,I,II,ords,blocks];