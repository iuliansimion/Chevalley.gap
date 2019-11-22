#
# cls 14: \tilde A_1
#
handle14char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[14];
    info:=infos[14];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[12]);#pr[12]=[1,0,2,1]-->[0,1,2,1]
    tmp1:=ConjugateByTorus(tmp1,3,-1);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[12]);#pr[12]=[1,0,2,1]-->[0,1,2,1]
    tmp2:=ConjugateByTorus(tmp2,3,-1);
    
    return [tmp1,tmp2];
end;

#
# cls 12: A_2
#
handle12char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,u;
    o:=Classes(orbs)[12];
    info:=infos[12];
    
    rep:=Representative(o);
    #pr[7]=[0,0,1,1]-->[0,1,1,0]
    #pr[13]=[0,1,2,1]-->[1,1,2,0]
    tmp1:=ApplyRootsReflections(rep,[7,13]);
    u:=Unipotent(algebraicU(orbs),[[4,-1]]);
    tmp1:=Conj(tmp1,u);
    tmp1:=ConjugateByTorus(tmp1,2,-1);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[7,13]);
    tmp2:=Conj(tmp2,u);
    tmp2:=ConjugateByTorus(tmp2,2,-1);

    return [tmp1,tmp2];
end;


#
# cls 9: B_2
#
handle9char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[9];
    info:=infos[9];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[9]);#pr[9]=[0,1,1,1]-->[1,1,1,0]
    tmp1:=ConjugateByTorus(tmp1,4,-1);# merge si cu 1
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[9]);#pr[9]=[0,1,1,1]-->[1,1,1,0]
    tmp2:=ConjugateByTorus(tmp2,4,-1);# merge si cu 1
    
    return [tmp1,tmp2];
end;


#
# cls 7: C_3(a_1)
#
handle7char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[7];
    info:=infos[7];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,1,-1);# h_1 --> h_4
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,1,-1);# h_1 --> h_4
    return [tmp1,tmp2];
end;

#
# cls 6: F_4(a_3) [4,6,10,18] (finished?)
#
handle6char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,o,info,rep,cent,uu;
    o:=Classes(orbs)[6];
    info:=infos[6];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[3]);#pr[3]=[0,0,1,0]-->[0,0,1,0]
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[6,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,3,4],[1,-1,aaa,aaa^2]);

    tmp3:=ApplyRootsReflections(rep,[5,1]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1]],Ordering(rep));#[1..24]);
    tmp3:=Conj(tmp3,uu);
    uu:=Unipotent(chevalleyAdj(rep),[[16,-1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjNegUa(tmp3,2,-1);
    uu:=Unipotent(chevalleyAdj(rep),[[13,1],[2,-1],[4,1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[3],[aaa]);

    tmp5:=ConjugateByTori(rep,[3],[-1]);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[3]);#pr[3]=[0,0,1,0]-->[0,0,1,0]
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[6,1]]);
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,3,4],[1,-1,aaa,aaa^2]);

    tmp4:=ApplyRootsReflections(cent,[5,1]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1]],Ordering(cent));#[1..24]);
    tmp4:=Conj(tmp4,uu);
    uu:=Unipotent(chevalleyAdj(rep),[[16,-1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjNegUa(tmp4,2,-1);
    uu:=Unipotent(chevalleyAdj(rep),[[13,1],[2,-1],[4,1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[3],[aaa]);

    tmp6:=ConjugateByTori(cent,[3],[-1]);

    
    return [tmp1,tmp3,tmp5,tmp2,tmp4,tmp6];
end;

#
# cls 3: F_4(a_2) (not finished)
#
handle3char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[3];
    info:=infos[3];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[4],[-1]);# h_1 --> h_4
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTori(cent,[4],[-1]);# h_1 --> h_4
    return [tmp1,tmp2];
end;

#
# cls 2: F_4(a_1)
#
handle2char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[2];
    info:=infos[2];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[3,1],[-1,-1]);# h_1 --> h_4, h_3 --> h_3
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1]],Ordering(rep));#pr[3]=[0,0,1,0]-->[0,0,1,0]
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTori(cent,[3,1],[-1,-1]);# h_1 --> h_4, h_3 --> h_3
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1]],Ordering(cent));#pr[3]=[0,0,1,0]-->[0,0,1,0]
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

