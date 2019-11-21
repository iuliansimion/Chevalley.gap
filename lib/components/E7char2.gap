#
# cls 40: A_2
#
handle40char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[40];
    info:=infos[40];
    
    rep:=Representative(o);
    #pr[17]=[0,0,1,1,1,0,0]
    #pr[15]=[0,1,1,1,0,0,0]
    #pr[32]=[1,1,1,2,1,0,0]
    tmp1:=ApplyRootsReflections(rep,[17,15,32]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1]]);
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[17,15,32]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1]]);
    tmp2:=Conj(tmp2,uu);

    return [tmp1,tmp2];
end;

#
# cls 38: A_2A_1
#
handle38char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[38];
    info:=infos[38];
    
    rep:=Representative(o);
    #pr[44]=[1,1,1,2,1,1,1]
    #pr[43]=[1,1,1,2,2,1,0]
    #pr[62]=[1,2,3,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[44,43,62]);
    uu:=Unipotent(chevalleyAdj(rep),[[1,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[44,43,62]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    return [tmp1,tmp2];
end;


#
# cls 30: D_4(a_1)
#
handle30char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[30];
    info:=infos[30];
    
    rep:=Representative(o);
    #pr[4] =[0,0,0,1,0,0,0]
    #pr[42]=[1,1,2,2,1,1,0]
    #pr[43]=[1,1,1,2,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[4,42,43]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[5,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,1,2,6],[-1,-1,-1,-1]);

    #pr[23]=[0,1,0,1,1,1,0]
    #pr[24]=[0,0,1,1,1,1,0]
    tmp3:=ApplyRootsReflections(rep,[23,24]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,1],[5,-1],[10,1],[11,-1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[2,4],[-1,-1,-1,-1]);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[4,42,43]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[5,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,1,2,6],[-1,-1,-1,-1]);

    tmp4:=ApplyRootsReflections(cent,[23,24]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,1],[5,-1],[10,1],[11,-1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[2,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# cls 27: D_4(a_1)A_1 [2,5,9,10,7]
#
handle27char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[27];
    #o:=orbs;
    info:=infos[27];
    #info:=infos;
    
    rep:=Representative(o);

    #pr[20]=[1,1,1,1,0,0,0]
    #pr[21]=[1,0,1,1,1,0,0]
    tmp1:=ApplyRootsReflections(rep,[20,21]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,-1],[5,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,4],[-1,-1,-1,-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[20,21]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,-1],[5,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 26: A_3A_2^{(2)} from [1,3,4,6,7,37] we get [31,20,40,30,27,37] has no component group
#
handle26char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[27];
    #o:=orbs;
    info:=infos[27];
    #info:=infos;
    
    rep:=Representative(o);

    #pr[20]=[1,1,1,1,0,0,0]
    #pr[21]=[1,0,1,1,1,0,0]
    tmp1:=ApplyRootsReflections(rep,[20,21]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,-1],[5,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,4],[-1,-1,-1,-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[20,21]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,-1],[5,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;


##
## cls 26: A_3A_2 [3,4,2,6,7] (not finished - check it)
##
#handle26char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent,uu;
#    o:=Classes(orbs)[26];
#    info:=infos[26];
#    
#    rep:=Representative(o);
#
#    #pr[23]=[0,1,0,1,1,1,0]
#    #pr[24]=[0,0,1,1,1,1,0]
#    #pr[45]=[0,1,1,2,2,1,1]
#    tmp1:=ApplyRootsReflections(rep,[23,24,45]);
#    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[3,1],[6,-1]],Ordering(rep));
#    tmp1:=Conj(tmp1,uu);
#    tmp1:=ConjugateByTori(tmp1,[4],[-1]);
#    
#    cent:=FromPositiveBorel(o,info[2]);
#    tmp2:=ApplyRootsReflections(cent,[23,24,45]);
#    uu:=Unipotent(chevalleyAdj(cent),[[6,-1]],Ordering(cent));
#    tmp2:=Conj(tmp2,uu);
#    tmp2:=ConjugateByTori(tmp2,[4],[-1]);
#    
#    return [tmp1,tmp2];
#end;


#
# cls 25: A_4 [1,2,3,4]
#
handle25char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[25];
    info:=infos[25];
    
    rep:=Representative(o);

    #pr[29]=[0,1,1,1,1,1,0]
    #pr[27]=[1,0,1,1,1,1,0]
    #pr[51]=[1,1,2,2,2,1,1]
    #pr[61]=[1,2,2,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[29,27,51,61]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[4,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,3,4],[-1,-1,-1,-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[29,27,51,61]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[4,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 20: D_5(a_1) (not finished)? cred ca e gata
#
handle20char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[20];
    info:=infos[20];
    
    rep:=Representative(o);

    #pr[59]=[1,1,2,3,3,2,1]
    #pr[58]=[1,2,2,3,2,2,1]
    tmp1:=ApplyRootsReflections(rep,[59,58]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,-1],[11,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,4,5],[-1,-1,-1,-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[59,58]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,-1],[11,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,4,5],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 21: A_4A_1 
#
handle21char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[21];
    info:=infos[21];
    
    rep:=Representative(o);

    #pr[36]=[0,1,1,1,1,1,1]
    #pr[34]=[1,0,1,1,1,1,1]
    #pr[46]=[1,1,2,2,2,1,0]
    #pr[61]=[1,2,2,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[36,34,46,61]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[4,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,3,4],[-1,-1,-1,-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[36,34,46,61]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[4,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 6: E_6(a_1) (not finished)
#
handle6char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[6];
    info:=infos[6];

    #pr[47]=[1,1,2,2,1,1,1]
    #pr[48]=[1,1,1,2,2,1,1]
    #pr[49]=[0,1,1,2,2,2,1]

    rep:=Representative(o);
    rep:=Unipotent(alg,coefficients(rep),[1..Length(pr)]);#ordered rep
    tmp1:=ApplyRootsReflections(rep,[47,48,49]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[1,1],[8,1],[6,-1]],Ordering(rep));# this works for orderd rep
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3,7],[-1,-1]);
    tmp1:=Unipotent(chevalleyAdj(rep),coefficients(tmp1),Ordering(Representative(o)));
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[47,48,49]);
    tmp2:=ConjNegUa(tmp2,4,1);
    #tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 14: E_6(a_3) for ([1,8,9,11,14,19] in E6) [1,9,10,12,16,22] in E7
#
handle14char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[14];
    info:=infos[14];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[6,1],[8,1],[9,1],[15,1],[16,1],[22,1],[23,1],[29,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[6,1],[8,1],[9,1],[15,1],[16,1],[22,1],[23,1],[29,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

#
# cls 4: E_7(a_3) [1,7,9,10,12,16,22] in E7
#
handle4char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[4];
    info:=infos[4];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[6,1],[8,1],[9,1],[15,1],[16,1],[22,1],[23,1],[29,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[6,1],[8,1],[9,1],[15,1],[16,1],[22,1],[23,1],[29,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;
