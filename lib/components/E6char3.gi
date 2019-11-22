#
# cls 17: A_2
#
handle17char3:=function()
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=AllClasses(orbs)[17];
    info:=infos[17];
    
    rep:=Representative(o);
    #pr[15]=[0,0,1,1,1,0]
    #pr[13]=[0,1,1,1,0,0]
    #pr[26]=[1,1,1,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[15,13,26]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1]]);
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3],[-1]);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[15,13,26]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1]]);
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[3],[-1]);

    return [tmp1,tmp2];
end;


#
# cls 10: D_4(a_1)
#
handle10char3:=function()
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=AllClasses(orbs)[10];
    info:=infos[10];
    
    rep:=Representative(o);
    #pr[4] =[0,0,0,1,0,0]
    #pr[32]=[1,1,2,2,1,1]
    #pr[33]=[1,1,1,2,2,1]
    tmp1:=ApplyRootsReflections(rep,[4,32,33]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[5,1]]);
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,1,2,6],[-1,-1,-1,-1]);

    #pr[20]=[0,1,0,1,1,1]
    #pr[21]=[0,0,1,1,1,1]
    tmp3:=ApplyRootsReflections(rep,[20,21]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,1],[5,-1],[9,1],[10,-1]]);
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[2,4],[-1,-1,-1,-1]);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[4,32,33]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[5,1]]);
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,1,2,6],[-1,-1,-1,-1]);

    tmp4:=ApplyRootsReflections(cent,[20,21]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,1],[5,-1],[9,1],[10,-1]]);
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[2,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# cls 4: E_6(a_3) [13,1,15,6,14,4] 
#
handle4char3:=function()
    local tmp1,tmp2,o,info,rep,cent;
    o:=AllClasses(orbs)[4];
    info:=infos[4];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;
