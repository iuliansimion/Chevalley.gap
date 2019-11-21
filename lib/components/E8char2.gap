#
# cls 70: A_2
#
handle70char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[70];
    info:=infos[70];
    
    rep:=Representative(o);
    #pr[19]=[0,0,1,1,1,0,0,0]
    #pr[17]=[0,1,1,1,0,0,0,0]
    #pr[37]=[1,1,1,2,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[19,17,37]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1]]);
    tmp1:=Conj(tmp1,uu);
    #tmp1:=ConjugateByTori(tmp1,[3],[-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[19,17,37]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1]]);
    tmp2:=Conj(tmp2,uu);
    #tmp2:=ConjugateByTori(tmp2,[3],[-1]);

    return [tmp1,tmp2];
end;

#
# cls 68: A_2A_1
#
handle68char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[68];
    info:=infos[68];
    
    rep:=Representative(o);
    #pr[53]=[1,1,1,2,1,1,1,0]
    #pr[52]=[1,1,1,2,2,1,0,0]
    #pr[93]=[1,2,3,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[53,52,93]);
    uu:=Unipotent(chevalleyAdj(rep),[[1,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1],[-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[53,52,93]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1],[-1]);

    return [tmp1,tmp2];
end;

#
# cls 64: A_2^2
#
handle64char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[64];
    info:=infos[64];
    
    rep:=Representative(o);
    #pr[43]=[0,0,1,1,1,1,1,1]
    #pr[41]=[0,1,1,1,1,1,1,0]
    #pr[79]=[1,1,1,2,2,2,2,1]
    tmp1:=ApplyRootsReflections(rep,[43,41,79]);
    uu:=Unipotent(chevalleyAdj(rep),[[1,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3],[-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[43,41,79]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[3],[-1]);

    return [tmp1,tmp2];
end;


#
# cls 61: D_4(a_1)
#
handle61char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[61];
    info:=infos[61];
    
    rep:=Representative(o);
    #pr[4] =[0,0,0,1,0,0,0,0]
    #pr[51]=[1,1,2,2,1,1,0,0]
    #pr[52]=[1,1,1,2,2,1,0,0]
    tmp1:=ApplyRootsReflections(rep,[4,51,52]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[5,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,1,2,6],[-1,-1,-1,-1]);

    #pr[26]=[0,1,0,1,1,1,0,0]
    #pr[27]=[0,0,1,1,1,1,0,0]
    tmp3:=ApplyRootsReflections(rep,[26,27]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,1],[5,-1],[11,1],[12,-1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[2,4],[-1,-1,-1,-1]);
    

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[4,51,52]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[5,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,1,2,6],[-1,-1,-1,-1]);

    tmp4:=0;
    tmp4:=ApplyRootsReflections(cent,[26,27]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,1],[5,-1],[11,1],[12,-1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[2,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# NOT FINISHED .. Should be an S_3
#
# cls 57: D_4(a_1)A_1 ([2,5,9,10,7] in E_7) [2,5,10,11,7] in E_8  ?CHANGE THE REPRESENTATIVE IN CHARACTERISTIC 2?
#
handle57char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[57];
    info:=infos[57];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    #pr[65]=[1,1,2,2,1,1,1,1]
    #pr[67]=[1,1,1,2,2,1,1,1]
    tmp3:=ApplyRootsReflections(rep,[65,67,4]);
    uu:=Unipotent(chevalleyAdj(rep),[[12,1],[11,1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    tmp4:=0;
    tmp4:=ApplyRootsReflections(cent,[65,67,4]);
    uu:=Unipotent(chevalleyAdj(cent),[[12,1],[11,1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# cls 54: A_4 [1,2,3,4] 
#
handle54char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[54];
    info:=infos[54];
    
    rep:=Representative(o);

    #pr[33]=[0,1,1,1,1,1,0,0]
    #pr[31]=[1,0,1,1,1,1,0,0]
    #pr[64]=[1,1,2,2,2,1,1,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[3,1],[9,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[3,1],[9,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 51: D_4(a_1)A_2 [2,5,10,11,7,8] in E_8
#
handle51char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[51];
    info:=infos[51];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]  asta merge si cu rep=[2,3,10,12,7,8] urmat de ConjNegUa(tmp1,4,1)
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 50: A_4A_1
#
handle50char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[50];
    info:=infos[50];

    rep:=Representative(o);

    #pr[41]=[0,1,1,1,1,1,1,0]
    #pr[39]=[1,0,1,1,1,1,1,0]
    #pr[57]=[1,1,2,2,2,1,0,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[3,1],[9,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[3,1],[9,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 48: D_5(a_1)
#
handle48char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[48];
    info:=infos[48];
    
    rep:=Representative(o);

    #pr[82]=[1,1,2,3,3,2,1,0]
    #pr[80]=[1,2,2,3,2,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[82,80]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[12,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[82,80]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[11,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;


#
# cls 47: A_4A_1^2
#
handle47char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[47];
    info:=infos[47];

    rep:=Representative(o);

    #pr[71]=[1,1,2,2,2,2,1,0]
    #pr[72]=[1,1,2,2,2,1,1,1]
    #pr[112]=[1,3,3,5,4,3,2,1]
    #pr[111]=[2,2,3,5,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[3,1],[9,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[3,1],[9,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

# THE COMPONENT GROUP IS GENERATED BY u IN CHARACTERISTIC 2
#
# cls 40: D_4A_2 
#
#handle40char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent,uu;
#    o:=Classes(orbs)[40];
#    #info:=infos[40];
#
#    rep:=Representative(o);
#
#    #pr[34]=[0,1,0,1,1,1,1,0]
#    #pr[35]=[0,0,1,1,1,1,1,0]
#    #pr[68]=[0,1,1,2,2,2,1,1]
#    tmp1:=ApplyRootsReflections(rep,[34,35,68]);
#    uu:=Unipotent(chevalleyAdj(rep),[[8,-1]],Ordering(rep));
#    tmp1:=Conj(tmp1,uu);
#    tmp1:=ConjugateByTori(tmp1,[4,6,7,8],[-1,-1,-1,-1]);
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ApplyRootsReflections(cent,[36,34,46,61]);
#    #uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[4,1]],Ordering(cent));
#    #tmp2:=Conj(tmp2,uu);
#    #tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
#    
#    return [tmp1,tmp2];
#end;


#
# cls 40: E_6(a_3)
#
handle40char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[40];
    info:=infos[40];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[6,1],[9,1],[10,1],[17,1],[18,1],[25,1],[26,1],[33,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[6,1],[9,1],[10,1],[17,1],[18,1],[25,1],[26,1],[33,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 35: D_6(a_2) 
#
handle35char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[35];
    info:=infos[35];

    rep:=Representative(o);

    #pr[42]=[0,1,0,1,1,1,1,0]
    #pr[43]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[42,43]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[6,1],[10,1],[13,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[42,43]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[6,1],[10,1],[13,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 34: E_6(a_3)A_1 
#
handle34char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[34];
    info:=infos[34];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[6,1],[9,1],[10,1],[17,1],[18,1],[25,1],[26,1],[33,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[6,1],[9,1],[10,1],[17,1],[18,1],[25,1],[26,1],[33,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 33: E_7(a_5)    
#
handle33char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[33];
    info:=infos[33];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[2,3,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp3:=ConjugateByTori(rep,[2,3,5],[aaa,aaa,aaa]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[2,3,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[2,3,5],[aaa,aaa,aaa]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;

#
# cls 31: E_8(a_7)       NOT FINISHED IN CHARACTERISTIC 2 !!!! 
#
handle31char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[31];
    #info:=infos[31];
    
    rep:=Representative(o);

    tmp2:=0;
    #cent:=FromPositiveBorel(o,info[2]);
    
    return [tmp1,tmp2];
end;

#
# cls 30: A_6       NOT FINISHED IN CHARACTERISTIC 2 !!!! 
#
handle30char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[30];
    info:=infos[30];
    
    rep:=Representative(o);
    tmp1:=rep^-1;              # longest words in E7 and E6: n_0*w_0=(17)(36)(45)
    #uu:=Unipotent(chevalleyAdj(rep),[[3,1],[5,1],[7,1],[10,1],[11,1],[24,1],[25,1]],Ordering(rep)); in E_7
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[5,1],[7,1],[11,1],[12,1],[27,1],[28,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);# =[27,28,24,39]
    tmp2:=coefficients(cent);# =[27,28,24,39]
    tmp2:=Unipotent(chevalleyAdj(cent),[tmp2[1],tmp2[3],tmp2[2],tmp2[4]],Ordering(cent));# =[27,24,28,39]
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[5,1],[7,1],[11,1],[12,1],[27,1],[28,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    
    return [tmp1,tmp2];
end;

#
# cls 29: D_6(a_1) 
#
handle29char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[29];
    info:=infos[29];

    rep:=Representative(o);

    #pr[42]=[0,1,0,1,1,1,1,0]
    #pr[43]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[42,43]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[11,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[42,43]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[11,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    #tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

# NO COMPONENT GROUP IN CHARACTERISTIC 2 FOR THIS CLASS
#
# cls 27: E_7(a_4)
#
#handle27char2:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent;
#    o:=Classes(orbs)[27];
#    #info:=infos[27];
#    
#    rep:=Representative(o);
#    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
#    
#    return [tmp1,tmp2];
#end;

#
# cls 26: E_6(a_1)
#
handle26char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[26];
    info:=infos[26];

    #pr[61]=[0,1,1,2,2,2,1]
    #pr[59]=[1,1,1,2,2,1,1]
    #pr[58]=[1,1,2,2,1,1,1]

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[58,59,61]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[6,1],[10,1],[11,1],[16,1],[17,1],[23,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[58,59,61]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[6,1],[10,1],[11,1],[16,1],[17,1],[23,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2,uu];
end;

# THE COMPONENT GROUP IS GENERATED BY u IN CHARACTERISTIC 2
#
# cls 24: D_5A_2 
#
#handle24char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent,uu;
#    o:=Classes(orbs)[24];
#    #info:=infos[24];
#
#    rep:=Representative(o);
#
#    #pr[87]=[1,1,2,3,3,2,1,1]
#    #pr[86]=[1,2,2,3,2,2,1,1]
#    #pr[119]=[2,3,4,6,5,4,3,1]
#    tmp1:=ApplyRootsReflections(rep,[87,86,119]);
#    uu:=Unipotent(chevalleyAdj(rep),[[8,-1]],Ordering(rep));
#    tmp1:=Conj(tmp1,uu);
#    tmp1:=ConjugateByTori(tmp1,[1,4,7],[-1,-1,-1,-1,-1]);
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ApplyRootsReflections(cent,[36,34,46,61]);
#    #uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[4,1]],Ordering(cent));
#    #tmp2:=Conj(tmp2,uu);
#    #tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
#    
#    return [tmp1,tmp2];
#end;

#
# cls 21: D_7(a_2)
#
handle21char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[21];
    info:=infos[21];

    rep:=Representative(o);

    #pr[113]=[2,3,3,5,4,3,2,1]
    #pr[114]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[113,114]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[6,1],[11,1],[13,1],[20,1],[27,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[113,114]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[6,1],[11,1],[13,1],[20,1],[27,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;
#
# THIS IS FOR THE D_7(a_2) class in E_8 characteristic 2
#
#set:=Filtered(subs,i->i<=63);
#Sort(set);
#uu:=Unipotent(alg,List(set,i->[i,avars[i]]),Ordering(rep));
#vals:=ShallowCopy(avars);
#vals[3]:=-vals[2];
#vals[4]:=-One(APR);
#vals[5]:=0;
#vals[6]:=One(APR);
#vals[7]:=0;
#vals[8]:=-vals[3];
#vals[11]:=-(vals[2]+vals[10]+One(APR));
#vals[12]:=-vals[3];
#vals[13]:=-(vals[2]+One(APR));
#vals[14]:=-vals[8];
#vals[15]:=-(vals[2]^2+vals[2]);
#vals[18]:=-(vals[2]^2+vals[2]+vals[17]);
#vals[19]:=-(vals[2]^2+vals[2]+vals[18]);
#vals[20]:=-(vals[2]+vals[10]+vals[13]);
#vals[21]:=-vals[15];
#vals[22]:=-(vals[2]^2+vals[19]);
#vals[26]:=-(vals[2]^2+vals[2]*vals[10]+vals[10]^2+vals[2]+vals[10]+vals[17]);
#vals[27]:=-(vals[2]^2+vals[2]*vals[13]+vals[10]*vals[13]+vals[11]*vals[13]+vals[2]+vals[10]+vals[11]+vals[13]+vals[17]+vals[20]+vals[26]+One(APR));
#vals[28]:=-vals[19];
#vals[29]:=-(vals[2]^3+vals[2]^2+vals[17]+vals[25]);

#vals[33]:=-(vals[2]^3+vals[2]^2*vals[10]+vals[2]*vals[10]+vals[2]+vals[17]+vals[32]);
#vals[34]:=-(vals[2]^3+vals[2]^2+vals[25]+vals[32]);
#vals[35]:=-(vals[2]^3+vals[2]^2+vals[17]+vals[25]+vals[34]);
#vals[36]:=-(vals[2]^2*vals[10]+vals[2]^2+vals[2]*vals[10]+vals[2]+vals[29]+vals[34]);
#vals[41]:=-(vals[2]^2*vals[17]+vals[2]*vals[17]+vals[17]^2+vals[25]);
#vals[43]:=-(vals[2]^4+vals[2]^2*vals[17]+vals[2]^2+vals[2]*vals[17]+vals[17]+vals[25]+vals[34]+vals[35]+vals[36]+vals[41]+vals[42]);
#vals[48]:=-(vals[2]^3*vals[10]+vals[2]^3+vals[2]*vals[10]+vals[10]*vals[17]+vals[2]+vals[17]+vals[25]+vals[32]+vals[42]);
#vals[49]:=-(vals[2]^4+vals[2]^3*vals[10]+vals[2]^2*vals[10]^2+vals[2]^3+vals[2]*vals[10]^2+vals[2]*vals[10]+vals[2]*vals[17]+vals[25]+vals[32]+vals[34]+vals[41]+vals[42]);

#vals[55]:=-(vals[2]^5+vals[2]^4*vals[10]+vals[2]^4+vals[2]^3+vals[2]^2*vals[10]+vals[2]^2+vals[17]^2+vals[17]*vals[25]+vals[25]+vals[50]);
#vals[61]:=-(vals[2]^5+vals[2]^4*vals[10]+vals[2]^4+vals[2]^3*vals[10]+vals[2]^3*vals[17]+vals[2]^2*vals[10]^2+vals[2]^2*vals[10]*vals[17]+vals[2]^2*vals[17]+vals[2]*vals[10]^2+vals[2]*vals[10]*vals[17]+vals[2]^2+vals[2]*vals[17]+vals[10]*vals[17]+vals[2]+vals[17]+vals[32]+vals[48]+vals[56]);
#vals[62]:=-(vals[2]^6+vals[2]^4*vals[10]^2+vals[2]^5+vals[2]^4*vals[10]+vals[2]^4*vals[17]+vals[2]^4+vals[2]^2*vals[10]^2+vals[2]^2*vals[10]*vals[17]+vals[2]^2*vals[10]*vals[25]+vals[2]^2*vals[17]^2+vals[2]^3+vals[2]^2*vals[10]+vals[2]^2*vals[25]+vals[2]*vals[10]*vals[17]+vals[2]*vals[10]*vals[25]+vals[17]^3+vals[2]*vals[17]+vals[2]*vals[25]+vals[17]^2+vals[17]*vals[25]+vals[32]^2+vals[25]+vals[50]);

#vv:=Value(uu,avars,vals);
#vvv:=Value(vv,avars,List(avars,i->0));



#
# cls 19: E_6(a_1)A_1
#
handle19char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[19];
    info:=infos[19];

    #pr[106]=[1,2,2,4,4,3,2,1]
    #pr[105]=[1,2,3,4,3,3,2,1]
    #pr[104]=[2,2,3,4,3,2,2,1]
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[106,105,104]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[11,1],[10,1],[6,1],[16,1],[17,1],[23,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[106,105,104]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[11,1],[10,1],[6,1],[16,1],[17,1],[23,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2,uu];
end;


#
# cls 18: E_7(a_3)
#
handle18char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[18];
    info:=infos[18];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[18,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[18,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 17: E_8(b_6)
#
handle17char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[17];
    info:=infos[17];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[7,1],[8,1],[18,1],[23,1],[31,1],[39,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp3:=ConjugateByTori(rep,[1,2,5],[aaa,aaa,aaa^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[7,1],[8,1],[18,1],[23,1],[31,1],[39,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[1,2,5],[aaa,aaa,aaa^2]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;

# THIS WORKS BUT HERE THE COMPONENT GROUP IS GENERATED BY U
#
# cls 16: D_7(a_1)
#
handle16char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[16];
    info:=infos[16];

    rep:=Representative(o);

    #pr[113]=[2,3,3,5,4,3,2,1]
    #pr[114]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[113,114]);
    #uu:=Unipotent(chevalleyAdj(rep),[[4,1],[10,-1]],Ordering(rep)); si asta merge
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[11,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    #tmp1:=ConjugateByTori(tmp1,[2,3,4],[aaa,aaa,-1]); IN CHAR 2 I DON'T NEED THIS

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[113,114]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[11,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    #tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 12: E_8(a_6) 
#
handle12char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[12];
    info:=infos[12];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[2,3,8,13]);
    uu:=Unipotent(chevalleyAdj(rep),[[18,1],[29,1],[31,1],[33,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp3:=ConjugateByTori(rep,[2,3,5,6,8],[aaa,aaa,aaa,aaa,aaa^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[2,3,8,13]);
    uu:=Unipotent(chevalleyAdj(cent),[[18,1],[29,1],[31,1],[33,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[2,3,5,6,8],[aaa,aaa,aaa,aaa,aaa^2]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;

#
# cls 10: E_8(b_5)
#
handle10char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[10];
    info:=infos[10];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[19,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp3:=ConjugateByTori(rep,[1,2,5],[aaa,aaa,aaa^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[19,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[1,2,5],[aaa,aaa,aaa^2]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;

#
# cls 8: E_8(a_5)       NOT FINISHED IN CHARACTERISTIC 2 !!!! 
#
handle8char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[8];
    info:=infos[8];
    
    rep:=Representative(o);
    uu:=Unipotent(chevalleyAdj(rep),[ [ 2, 1 ], [ 3, 1 ], [ 6, 1 ], [ 8, 1 ], [ 21, 1 ], [ 25, 1 ] ],Ordering(rep));
    tmp1:=Conj(rep,uu);

    uu:=Unipotent(chevalleyAdj(rep),[ [ 1, 1 ], [ 7, 1 ], [ 10, 1 ], [ 12, 1 ], [ 14, 1 ], [ 16, 1 ], [ 19, 1 ], [ 21, 1 ], [ 23, 1 ], [ 25, 1 ], [ 28, 1 ], [ 37, 1 ], [ 44, 1 ], [ 46, 1 ], [ 53, 1 ], [ 55, 1 ], [ 59, 1 ], [ 66, 1 ], [ 67, 1 ], [ 69, 1 ], [ 71, 1 ], [ 74, 1 ], [ 76, 1 ], [ 77, 1 ], [ 81, 1 ], [ 107, 1 ], [ 110, 1 ], [ 114, 1 ], [ 115, 1 ] ],Ordering(rep));
    tmp3:=Conj(rep,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    uu:=Unipotent(chevalleyAdj(cent),[ [ 2, 1 ], [ 3, 1 ], [ 6, 1 ], [ 8, 1 ], [ 21, 1 ], [ 25, 1 ] ],Ordering(cent));
    tmp2:=Conj(cent,uu);
   
    tmp4:=0;
    uu:=Unipotent(chevalleyAdj(cent),[ [ 1, 1 ], [ 7, 1 ], [ 10, 1 ], [ 12, 1 ], [ 14, 1 ], [ 16, 1 ], [ 19, 1 ], [ 21, 1 ], [ 23, 1 ], [ 25, 1 ], [ 28, 1 ], [ 37, 1 ], [ 44, 1 ], [ 46, 1 ], [ 53, 1 ], [ 55, 1 ], [ 59, 1 ], [ 66, 1 ], [ 67, 1 ], [ 69, 1 ], [ 71, 1 ], [ 74, 1 ], [ 76, 1 ], [ 77, 1 ], [ 81, 1 ], [ 107, 1 ], [ 110, 1 ], [ 114, 1 ], [ 115, 1 ] ],Ordering(cent));
    tmp4:=Conj(cent,uu);
 
    return [tmp1,tmp3,tmp2,tmp4,uu];
end;

# THE COMPONENT GROUP IS GENERATED BY u IN CHARACTERISTIC 2
#
# cls 7: E_8(b_4) [1,4,7,8,14,17,19,26]  this doesn't work in char2 
#
#handle7char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent;
#    o:=Classes(orbs)[7];
#    #info:=infos[7];
#    
#    rep:=Representative(o);
#    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
#    
#    return [tmp1,tmp2];
#end;

#
# cls 5: E_8(a_4)       NOT FINISHED IN CHARACTERISTIC 2 !!!!  
#
handle5char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[5];
    info:=infos[5];
    
    rep:=Representative(o);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[3,1],[5,1],[7,1]],Ordering(rep));
    tmp1:=Conj(rep,uu);
    uu:=Unipotent(chevalleyAdj(rep),[ [ 1, 1 ], [ 4, 1 ], [ 6, 1 ], [ 8, 1 ], [ 11, 1 ], [ 12, 1 ], [ 14, 1 ], [ 16, 1 ], [ 19, 1 ], [ 25, 1 ], [ 27, 1 ], [ 28, 1 ], [ 30, 1 ], [ 31, 1 ], [ 32, 1 ], [ 33, 1 ], [ 35, 1 ], [ 37, 1 ], [ 38, 1 ], [ 39, 1 ], [ 40, 1 ], [ 41, 1 ], [ 45, 1 ], [ 46, 1 ], [ 48, 1 ], [ 49, 1 ], [ 52, 1 ], [ 53, 1 ], [ 59, 1 ], [ 64, 1 ], [ 66, 1 ], [ 67, 1 ], [ 72, 1 ], [ 77, 1 ], [ 80, 1 ], [ 81, 1 ], [ 85, 1 ], [ 98, 1 ], [ 99, 1 ], [ 100, 1 ], [ 102, 1 ], [ 106, 1 ], [ 107, 1 ], [ 110, 1 ], [ 112, 1 ], [ 114, 1 ], [ 115, 1 ], [ 116, 1 ] ],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[3,1],[5,1],[7,1]],Ordering(cent));
    tmp2:=Conj(cent,uu);
    uu:=Unipotent(chevalleyAdj(cent),[ [ 1, 1 ], [ 4, 1 ], [ 6, 1 ], [ 8, 1 ], [ 11, 1 ], [ 12, 1 ], [ 14, 1 ], [ 16, 1 ], [ 19, 1 ], [ 25, 1 ], [ 27, 1 ], [ 28, 1 ], [ 30, 1 ], [ 31, 1 ], [ 32, 1 ], [ 33, 1 ], [ 35, 1 ], [ 37, 1 ], [ 38, 1 ], [ 39, 1 ], [ 40, 1 ], [ 41, 1 ], [ 45, 1 ], [ 46, 1 ], [ 48, 1 ], [ 49, 1 ], [ 52, 1 ], [ 53, 1 ], [ 59, 1 ], [ 64, 1 ], [ 66, 1 ], [ 67, 1 ], [ 72, 1 ], [ 77, 1 ], [ 80, 1 ], [ 81, 1 ], [ 85, 1 ], [ 98, 1 ], [ 99, 1 ], [ 100, 1 ], [ 102, 1 ], [ 106, 1 ], [ 107, 1 ], [ 110, 1 ], [ 112, 1 ], [ 114, 1 ], [ 115, 1 ], [ 116, 1 ] ],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2,uu];
end;

#
# cls 4: E_8(a_3)       NOT FINISHED IN CHARACTERISTIC 2 !!!!  
#
handle4char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[4];
    info:=infos[4];
    
    rep:=Representative(o);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[3,1],[5,1],[19,1]],Ordering(rep));
    tmp1:=Conj(rep,uu);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[3,1],[5,1],[19,1]],Ordering(cent));
    tmp2:=Conj(cent,uu);
    
    return [tmp1,tmp2];
end;




