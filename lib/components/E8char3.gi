#
# cls 67: A_2
#
handle67char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[67];
    info:=infos[67];
    
    rep:=Representative(o);
    #pr[19]=[0,0,1,1,1,0,0,0]
    #pr[17]=[0,1,1,1,0,0,0,0]
    #pr[37]=[1,1,1,2,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[19,17,37]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1]]);
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3],[-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[19,17,37]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1]]);
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[3],[-1]);

    return [tmp1,tmp2];
end;

#
# cls 65: A_2A_1
#
handle65char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[65];
    info:=infos[65];
    
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
# cls 61: A_2^2
#
handle61char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[61];
    info:=infos[61];
    
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
# cls 58: D_4(a_1)
#
handle58char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[58];
    info:=infos[58];
    
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
# cls 54: D_4(a_1)A_1 Ross' rep
#
handle54char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[54];
    info:=infos[54];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1]],Ordering(rep)); 
    tmp1:=Conj(tmp1,uu); 
    tmp1:=ConjugateByTori(tmp1,[2],[-1,-1,-1,-1]);

    #pr[65]=[1,1,2,2,1,1,1,1]
    #pr[67]=[1,1,1,2,2,1,1,1]
    tmp3:=ApplyRootsReflections(rep,[65,67,4]);
    uu:=Unipotent(chevalleyAdj(rep),[[12,-1],[11,-1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[1,2,4,6,8],[-1,-1,-1,-1,-1,-1]); 
    
    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2],[-1,-1,-1,-1]);

    tmp4:=0;
    tmp4:=ApplyRootsReflections(cent,[65,67,4]);
    uu:=Unipotent(chevalleyAdj(cent),[[12,-1],[11,-1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[1,2,4,6,8],[-1,-1,-1,-1,-1]); 
    
    return [tmp1,tmp3,tmp2,tmp4];
end;
#
# cls 54: D_4(a_1)A_1 ([2,5,9,10,7] in E_7) [2,5,10,11,7] in E_8
#
handle54char3old:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[54];
    info:=infos[54];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[12,1]],Ordering(rep)); 
    tmp1:=Conj(tmp1,uu); 
    tmp1:=ConjugateByTori(tmp1,[1,2],[-1,-1,-1,-1]);

    #pr[65]=[1,1,2,2,1,1,1,1]
    #pr[67]=[1,1,1,2,2,1,1,1]
    tmp3:=ApplyRootsReflections(rep,[65,67]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,-1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjNegUa(tmp3,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,-1],[5,-1],[12,1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[2,4],[-1,-1,-1,-1]); 
    
    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[12,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2],[-1,-1,-1,-1]);

    tmp4:=0;
    tmp4:=ApplyRootsReflections(cent,[65,67]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,-1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjNegUa(tmp4,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,-1],[5,-1],[12,1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjugateByTori(tmp4,[2,4],[-1,-1,-1,-1]); 
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# cls 53: A_3A_2 [3,4,2,6,7]
#
handle53char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[53];
    info:=infos[53];
    
    rep:=Representative(o);

    #pr[26]=[0,1,0,1,1,1,0,0]
    #pr[27]=[0,0,1,1,1,1,0,0]
    #pr[55]=[0,1,1,2,2,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[26,27,55]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[3,1],[6,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,6],[-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[26,27,55]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[3,1],[6,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,6],[-1,-1]);
    
    return [tmp1,tmp2];
end;


#
# cls 52: A_4
#
handle52char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[52];
    info:=infos[52];
    
    rep:=Representative(o);

    #pr[33]=[0,1,1,1,1,1,0,0]
    #pr[31]=[1,0,1,1,1,1,0,0]
    #pr[64]=[1,1,2,2,2,1,1,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,1],[11,-1],[17,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,1],[11,-1],[17,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[1]:=vals[2];
#vals[3]:=-vals[1]+One(APR);
#vals[4]:=vals[2]+One(APR);
#vals[11]:=-(vals[2]^2-vals[2]-vals[10]+One(APR));
#vals[17]:=-(vals[9]-vals[10]+vals[16]+One(APR));
#
# cls 52: A_4 [1,2,3,4]
#
handle52char3old:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[52];
    info:=infos[52];
    
    rep:=Representative(o);

    #pr[33]=[0,1,1,1,1,1,0,0]
    #pr[31]=[1,0,1,1,1,1,0,0]
    #pr[64]=[1,1,2,2,2,1,1,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[4,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[4,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 49: D_4(a_1)A_2
#
handle49char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[49];
    info:=infos[49];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]  asta merge si cu rep=[2,3,10,12,7,8] urmat de ConjNegUa(tmp1,4,1)
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    tmp1:=ConjNegUa(tmp1,4,1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    tmp2:=ConjNegUa(tmp2,4,1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#
# cls 49: D_4(a_1)A_2 [2,5,10,11,7,8] in E_8
#
handle49char3old:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[49];
    info:=infos[49];
    
    rep:=Representative(o);

    #pr[23]=[1,1,1,1,0,0,0,0]  asta merge si cu rep=[2,3,10,12,7,8] urmat de ConjNegUa(tmp1,4,1)
    #pr[24]=[1,0,1,1,1,0,0,0]
    tmp1:=ApplyRootsReflections(rep,[23,24]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[12,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[23,24]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[12,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 48: A_4A_1 
#
handle48char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[48];
    info:=infos[48];

    rep:=Representative(o);

    #pr[41]=[0,1,1,1,1,1,1,0]
    #pr[39]=[1,0,1,1,1,1,1,0]
    #pr[57]=[1,1,2,2,2,1,0,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,-1],[11,-1],[17,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,-1],[11,-1],[17,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[2]:=vals[1];
#vals[3]:=vals[1]-One(APR);
#vals[4]:=-vals[2]-One(APR);
#vals[11]:=vals[1]-vals[9]-One(APR);
#vals[10]:=-vals[1]^2+vals[9];
#vals[17]:=vals[1]^2-vals[16]-One(APR);

#
# cls 46: D_5(a_1)
#
handle46char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[46];
    info:=infos[46];
    
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
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[12,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;


#
# cls 45: A_4A_1^2 
#
handle45char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[45];
    info:=infos[45];

    rep:=Representative(o);

    #pr[71]=[1,1,2,2,2,2,1,0]
    #pr[72]=[1,1,2,2,2,1,1,1]
    #pr[112]=[1,3,3,5,4,3,2,1]
    #pr[111]=[2,2,3,5,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(rep),[[1,1],[2,1],[3,-1],[9,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[5,8],[-1,aaa]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,1],[2,1],[3,-1],[9,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[5,8],[-1,aaa]);
    
    return [tmp1,tmp2];
end;

#
# cls 40: D_4A_2 
#
handle40char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[40];
    info:=infos[40];

    rep:=Representative(o);

    #pr[34]=[0,1,0,1,1,1,1,0]
    #pr[35]=[0,0,1,1,1,1,1,0]
    #pr[68]=[0,1,1,2,2,2,1,1]
    tmp1:=ApplyRootsReflections(rep,[34,35,68]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,-1],[5,-1],[8,-1],[11,-1],[12,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,6,7,8],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[34,35,68]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,-1],[5,-1],[8,-1],[11,-1],[12,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,6,7,8],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[3]:=vals[2]-One(APR);
#vals[4]:=-vals[2]-One(APR);
#vals[5]:=vals[4];
#vals[8]:=-vals[7]-One(APR);
#vals[11]:=-vals[2]^2+vals[2]-vals[10]-One(APR);
#vals[12]:=vals[2]-vals[10]+One(APR);


#
# cls 39: E_6(a_3) [1,4,6,17,18,19] this doesn't work in char2 
#
handle39char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[39];
    info:=infos[39];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 34: D_6(a_2) 
#
handle34char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[34];
    info:=infos[34];

    rep:=Representative(o);

    #pr[42]=[0,1,0,1,1,1,1,0]
    #pr[43]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[42,43]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[6,1],[10,1],[13,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,5,8],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[42,43]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[6,1],[10,1],[13,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,5,8],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 33: E_6(a_3)A_1 [1,4,6,8,17,18,19] this doesn't work in char2 
#
handle33char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[33];
    info:=infos[33];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 32: E_7(a_5)
#
handle32char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[32];
    info:=infos[32];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,1,1);
    tmp1:=ConjNegUa(tmp1,3,-1);
    tmp1:=ConjNegUa(tmp1,9,-1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[1,-1],[3,1],[5,-1],[6,-1],[9,1],[13,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    uu:=Unipotent(chevalleyAdj(rep),[[11,1],[14,1],[16,1],[20,1],[21,1],[25,1],[26,-1],[27,-1],[30,1],[33,-1],[35,-1],[37,-1],[38,-1],[39,1],[41,-1],[44,1],[45,1],[46,-1],[51,-1],[52,-1],[59,1],[64,-1],[66,1],[69,-1],[71,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTorus(tmp1,1,-1);

    tmp3:=ConjugateByTorus(rep,18,-1);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,1,1);
    tmp2:=ConjNegUa(tmp2,3,-1);
    tmp2:=ConjNegUa(tmp2,9,-1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[1,-1],[3,1],[5,-1],[6,-1],[9,1],[13,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    uu:=Unipotent(chevalleyAdj(cent),[[11,1],[14,1],[16,1],[20,1],[21,1],[25,1],[26,-1],[27,-1],[30,1],[33,-1],[35,-1],[37,-1],[38,-1],[39,1],[41,-1],[44,1],[45,1],[46,-1],[51,-1],[52,-1],[59,1],[64,-1],[66,1],[69,-1],[71,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTorus(tmp2,1,-1);

    tmp4:=0;
    tmp4:=ConjugateByTorus(cent,18,-1);

    return [tmp1,tmp3,tmp2,tmp4,uu];
end;

#
# cls 30: E_8(a_7) (NOT FINISHED)
#
handle30char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[30];
    info:=infos[30];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    #cent:=FromPositiveBorel(o,info[2]);
    #tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 28: D_6(a_1) 
#
handle28char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[28];
    info:=infos[28];

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
    tmp2:=ConjugateByTori(tmp2,[3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 26: E_7(a_4) [1,4,7,14,17,18,19,26] this doesn't work in char2 
#
handle26char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[26];
    info:=infos[26];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 25: E_6(a_1)
#
handle25char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[25];
    info:=infos[25];

    #pr[58]=[1,1,2,2,1,1,1,0]
    #pr[59]=[1,1,1,2,2,1,1,0]
    #pr[61]=[0,1,1,2,2,2,1,0]

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[58,59,61]);
    tmp1:=ConjNegUa(tmp1,4,-1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[5,-1],[10,-1],[11,-1],[12,1],[18,1],[19,1],[26,-1],[27,-1],[32,-1],[40,1],[48,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[5,7],[-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[58,59,61]);
    tmp2:=ConjNegUa(tmp2,4,-1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[5,-1],[10,-1],[11,-1],[12,1],[18,1],[19,1],[26,-1],[27,-1],[32,-1],[40,1],[48,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[5,7],[-1,-1]);
    
    return [tmp1,tmp2,uu];
end;

#
# cls 24: D_5A_2 
#
handle24char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[24];
    info:=infos[24];

    rep:=Representative(o);

    #pr[87]=[1,1,2,3,3,2,1,1]
    #pr[86]=[1,2,2,3,2,2,1,1]
    #pr[119]=[2,3,4,6,5,4,3,1]
    tmp1:=ApplyRootsReflections(rep,[87,86,119]);
    uu:=Unipotent(chevalleyAdj(rep),[[8,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,4,7],[-1,-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[87,86,119]);
    uu:=Unipotent(chevalleyAdj(cent),[[8,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,4,7],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 21: D_7(a_2)
#
handle21char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[21];
    info:=infos[21];

    rep:=Representative(o);

    #pr[113]=[2,3,3,5,4,3,2,1]
    #pr[114]=[2,2,4,5,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[113,114]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[6,1],[11,-1],[13,-1],[20,-1],[27,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[5,6],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[113,114]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[6,1],[11,-1],[13,-1],[20,-1],[27,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[5,6],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#
# THIS IS FOR THE D_7(a_2) class in E_8 characteristic 3
#
#set:=Filtered(subs,i->i<=63);
#Sort(set);
#uu:=Unipotent(alg,List(set,i->[i,avars[i]]),Ordering(rep));
#
#vals:=ShallowCopy(avars);
#vals[4]:=0;
#vals[3]:=vals[2];
#vals[5]:=vals[3]-vals[2];
#vals[6]:=One(APR);
#vals[7]:=0;
#vals[8]:=vals[2];
#vals[11]:=-vals[3]-vals[10]-One(APR);
#vals[12]:=vals[3];
#vals[13]:=-vals[2]+vals[10]-One(APR);
#vals[14]:=vals[8];
#vals[17]:=vals[2]^2+vals[2]-vals[15];
#vals[18]:=-vals[2]-vals[17];
#vals[19]:=vals[3]^2-vals[2]-vals[18];
#vals[20]:=vals[13]+vals[10];
#vals[21]:=vals[15];
#vals[22]:=-vals[2]^2-vals[2]+vals[15]-vals[17];
#vals[26]:=-vals[2]*vals[10]-vals[10]^2-vals[10]+vals[17];
#vals[27]:=vals[2]+vals[10]+vals[17]-vals[26]+One(APR);
#vals[28]:=vals[18]+vals[15];
#vals[32]:=-(-vals[2]^3-vals[2]+vals[15]-vals[25]-vals[29]);
#vals[33]:=-(vals[2]^2*vals[10]-vals[2]^2+vals[2]*vals[10]-vals[2]-vals[15]-vals[32]);
#vals[34]:=vals[2]^2+vals[25]+vals[32];
#vals[35]:=-vals[2]^3-vals[2]^2-vals[2]+vals[15]+vals[25]-vals[34];
#vals[36]:=vals[2]*vals[15]+vals[10]*vals[15]+vals[15]+vals[29]+vals[34];
#vals[41]:=-(vals[2]^4+vals[2]^3+vals[2]^2-vals[15]^2+vals[25]);
#vals[43]:=vals[2]^3-vals[2]^2*vals[15]+vals[2]^2-vals[2]*vals[15]+vals[15]^2+vals[2]-vals[15]-vals[25]+vals[34]+vals[35]-vals[36]+vals[41]-vals[42];
#vals[48]:=-vals[2]^4+vals[2]^3*vals[10]+vals[2]^3-vals[2]^2*vals[15]+vals[2]*vals[10]*vals[15]+vals[10]^2*vals[15]+vals[2]*vals[10]-vals[10]*vals[15]-vals[15]^2-vals[2]-vals[25]+vals[29]+vals[42];
#vals[49]:=-(vals[2]^4+vals[2]^3+vals[2]^2*vals[15]+vals[2]*vals[10]*vals[15]+vals[10]^2*vals[15]-vals[2]*vals[15]+vals[10]*vals[15]+vals[15]^2+vals[41]-vals[42]);
#vals[55]:=-(-vals[2]^4-vals[2]^2*vals[10]*vals[15]-vals[2]^3+vals[2]^2*vals[15]-vals[2]^2*vals[25]-vals[2]*vals[10]*vals[15]-vals[2]^2+vals[2]*vals[15]+vals[2]*vals[25]-vals[15]^2-vals[15]*vals[25]-vals[25]+vals[50]);
#vals[61]:=-(vals[2]^4*vals[10]+vals[2]^3*vals[10]-vals[2]^2*vals[10]*vals[15]+vals[2]^3+vals[2]^2*vals[10]+vals[2]^2*vals[15]-vals[2]*vals[10]*vals[15]-vals[2]*vals[10]-vals[2]*vals[15]-vals[10]*vals[15]-vals[15]^2-vals[2]-vals[15]-vals[32]-vals[41]+vals[42]+vals[48]-vals[49]+vals[56]);
#vals[62]:=-(-vals[2]^6+vals[2]^5+vals[2]^3*vals[10]*vals[15]-vals[2]^3*vals[15]+vals[2]^3*vals[25]-vals[2]^3*vals[29]+vals[2]^2*vals[10]*vals[15]-vals[2]*vals[10]*vals[15]^2-vals[10]^2*vals[15]^2+vals[2]^3+vals[2]^2*vals[15]+vals[2]^2*vals[25]-vals[2]*vals[10]*vals[15]+vals[2]*vals[15]^2+vals[2]*vals[15]*vals[25]+vals[10]*vals[15]*vals[25]-vals[15]^3-vals[2]^2+vals[2]*vals[15]+vals[2]*vals[25]-vals[2]*vals[29]+vals[15]*vals[29]+vals[25]^2-vals[25]*vals[29]+vals[29]^2+vals[25]-vals[50]);
#
#vv:=Value(uu,avars,vals);
#vvv:=Value(vv,avars,List(avars,i->0));


#
# cls 18: E_6(a_1)A_1
#
handle18char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[18];
    info:=infos[18];

    #pr[106]=[1,2,2,4,4,3,2,1]
    #pr[105]=[1,2,3,4,3,3,2,1]
    #pr[104]=[2,2,3,4,3,2,2,1]

    # this is for E_6(a_1)A_1
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[106,105,104]);
    tmp1:=ConjNegUa(tmp1,4,-1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[11,1],[12,-1],[5,1],[10,-1],[18,-1],[19,-1],[26,-1],[27,1],[32,1],[40,-1],[48,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,3,5,6],[-1,-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[106,105,104]);
    tmp2:=ConjNegUa(tmp2,4,-1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[11,1],[12,-1],[5,1],[10,-1],[18,-1],[19,-1],[26,-1],[27,1],[32,1],[40,-1],[48,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,3,5,6],[-1,-1,-1,-1,-1]);
    
    return [tmp1,tmp2,uu];
end;
#
# THIS IS FOR THE E_6(a_1)A_1 class in E_7 characteristic 3
#
#set:=List(Filtered(pr,i->i[7]=0 and i[8]=0),j->Position(pr,j));
#uu:=Unipotent(alg,List(set,i->[i,avars[i]]),Ordering(rep));
#vals:=ShallowCopy(avars);
#vals[2]:=One(APR)-vals[1];
#vals[3]:=0;
#vals[4]:=0;
#vals[5]:=vals[1]+One(APR);
#vals[6]:=vals[5]-One(APR);
#vals[11]:=One(APR)-vals[1];
#vals[10]:=-One(APR);
#vals[12]:=-vals[1]-vals[10]+One(APR);
#vals[13]:=-vals[1]^2-vals[1]-vals[9];
#vals[16]:=-(-vals[1]^2+vals[1]+vals[9]);
#vals[17]:=-(-vals[1]^2+vals[1]-vals[16]);
#vals[18]:=-vals[1]^2+vals[1]+vals[9]-One(APR);
#vals[19]:=-(-vals[1]^2-vals[1]+vals[9]-vals[16]-One(APR));
#vals[20]:=vals[1]^2-vals[18]-One(APR);
#vals[24]:=-(vals[1]^3-vals[1]^2+vals[1]*vals[9]+vals[9]-vals[23]);
#vals[25]:=-(vals[1]^3-vals[1]^2-vals[1]*vals[9]-vals[9]-vals[23]-vals[24]);
#vals[26]:=-vals[1]^2-vals[23]-One(APR);
#vals[27]:=-(vals[1]^3+vals[1]^2-vals[1]*vals[9]-vals[1]-vals[9]-vals[24]-One(APR));
#vals[30]:=-(vals[1]^4+vals[1]^3+vals[1]^2*vals[9]+vals[1]^2-vals[1]*vals[9]+vals[9]^2-vals[23]);
#vals[32]:=-(vals[1]^3+vals[1]^2-vals[9]-vals[23]+One(APR));
#vals[33]:=-(vals[1]^4-vals[1]^3-vals[1]^2-vals[1]*vals[9]+vals[1]+vals[24]-vals[30]-vals[31]);
#vals[37]:=-vals[1]^4+vals[1]^3+vals[1]^2*vals[9]-vals[1]*vals[9]-vals[9]^2+vals[9]-vals[23]+vals[31];
#vals[40]:=-(vals[1]^4+vals[1]^3-vals[1]^2*vals[9]+vals[1]^2+vals[1]*vals[9]-vals[1]-vals[9]-vals[37]+One(APR));
#vals[44]:=vals[1]^4-vals[1]^3*vals[9]+vals[1]^3+vals[1]^2*vals[9]+vals[1]*vals[9]^2+vals[1]^2-vals[9]^2-vals[23]+vals[38];
#vals[48]:=-(-vals[1]^5-vals[1]^4-vals[1]^3*vals[9]-vals[1]^2*vals[9]-vals[1]^2+vals[1]*vals[9]-vals[9]^2-vals[1]+vals[9]-vals[23]+vals[37]+vals[38]-vals[45]+One(APR));
#vals[51]:=-vals[1]^4-vals[1]^3*vals[23]+vals[1]^2*vals[9]^2-vals[1]^3+vals[1]*vals[9]^2-vals[1]^2-vals[1]*vals[23]-vals[9]^2+vals[23]^2+vals[23]+vals[38];
#vals[52]:=vals[1]^6+vals[1]^5-vals[1]^4*vals[9]+vals[1]^4+vals[1]^3*vals[9]+vals[1]^2*vals[9]^2+vals[1]^3-vals[1]^2*vals[9]-vals[1]^2*vals[23]-vals[1]*vals[9]^2+vals[9]^3-vals[1]^2+vals[9]^2+vals[23]^2+vals[23]-vals[31]-vals[38]+vals[45];
#vals[63]:=-(-vals[1]^6-vals[1]^5*vals[9]-vals[1]^4*vals[9]-vals[1]^3*vals[9]^2-vals[1]^3*vals[9]-vals[1]^3*vals[23]-vals[1]^3*vals[31]-vals[1]*vals[9]^3+vals[1]^3-vals[1]^2*vals[9]+vals[1]^2*vals[23]-vals[1]^2*vals[31]-vals[9]^3-vals[9]^2*vals[23]-vals[1]*vals[9]-vals[1]*vals[23]+vals[9]^2+vals[9]*vals[31]+vals[23]^2+vals[23]*vals[31]-vals[9]+vals[23]-vals[31]);
#
#vv:=Value(uu,avars,vals);
#vvv:=Value(vv,avars,List(avars,i->0));


#
# cls 17: E_7(a_3) ([1,4,6,7,15,16,17] in E_7) [1,4,6,7,17,18,19] in E_8 this doesn't work in char2 
#
handle17char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[17];
    info:=infos[17];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;


# This is for Seitz' representative in first table
#
# cls 16: E_8(b_6)
#
#handle16char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent;
#    o:=Classes(orbs)[16];
#    #info:=infos[16];
#    
#    rep:=Representative(o);
#    tmp1:=ConjugateByTori(rep,[3,4,7,8],[-1,-1,-1,-1]);# same as [11,15] should be Z(D_8)
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ConjugateByTori(cent,[3,4,7,8],[-1,-1,-1,-1]);# same as [11,15] should be Z(D_8)
#    
#    return [tmp1,tmp2];
#end;

# This is for Seitz' representative used in proof
#
# cls 16: E_8(b_6) 
#
handle16char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[16];
    info:=infos[16];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[12,13,15],[-1,-1,-1,-1]);# should be Z(D_8)

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTori(cent,[12,13,15],[-1,-1,-1,-1]);# should be Z(D_8)
    
    return [tmp1,tmp2];
end;

#
# cls 15: D_7(a_1)
#
handle15char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[15];
    info:=infos[15];

    rep:=Representative(o);

    #pr[113]=[2,3,3,5,4,3,2,1]
    #pr[114]=[0,0,1,1,1,1,1,0]
    tmp1:=ApplyRootsReflections(rep,[113,114]);
    #uu:=Unipotent(chevalleyAdj(rep),[[4,1],[10,-1]],Ordering(rep)); si asta merge
    uu:=Unipotent(chevalleyAdj(rep),[[4,1],[11,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,3,4],[aaa,aaa,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[113,114]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[11,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,3,4],[aaa,aaa,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 12: E_8(a_6)
#
handle12char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu,vars;
    o:=Classes(orbs)[12];
    info:=infos[12];

    # L(Q)_2 has dimension 24 and should correspond to [ 4, 12, 14, 15, 21, 23, 25, 26, 31, 37, 46, 47, 53, 55, 57, 72, 73, 82, 90, 92, 97, 104, 106, 113 ]
    rep:=Representative(o);

    vars:=ShallowCopy(avars);#List([1..120],i->avars[i]);
    #vars[5]:=vars[1]*vars[2]*vars[3]-vars[1]*vars[3]*vars[13]-vars[2]*vars[3]*vars[5]+vars[2]*vars[9]-vars[2]*vars[13]-vars[9]*vars[13];
    vars[9]:=One(APR);
    vars[1]:=-vars[9]^2;#0;
    vars[2]:=vars[9]^3;
    #vars[9]:=One(APR);# sau -1
    vars[3]:=0;#-vars[9];
    vars[5]:=vars[1];
    #vars[23]:=-vars[9];
    #vars[2]:=vars[3]*vars[9]*vars[23]-vars[9]^2*vars[23];
    #vars[5]:=1;
    vars[26]:=-One(APR);
    vars[21]:=Zero(APR);
    vars[13]:=vars[1]*vars[3]-vars[3]*vars[5]+vars[9];
    vars[23]:=-vars[9]^3;
    vars[29]:=-(vars[9]^3*vars[21]+vars[2]-vars[9]);#0=-vars[21];
    
    tmp1:=ConjNegUa(rep,2,vars[2]);#1
    tmp1:=ConjNegUa(tmp1,5,vars[5]);#-1
    #tmp1:=ConjNegUa(tmp1,6,avars[6]);
    tmp1:=ConjNegUa(tmp1,13,vars[13]);#1
    #uu:=Unipotent(chevalleyAdj(rep),[[6,One(APR)]],Ordering(rep));
    #tmp1:=Conj(tmp1,uu);
    tmp1:=ConjNegUa(tmp1,1,vars[1]);#-1
    tmp1:=ConjNegUa(tmp1,3,vars[3]);#0
    tmp1:=ConjNegUa(tmp1,9,vars[9]);#1
    uu:=Unipotent(chevalleyAdj(rep),[[1,vars[21]],[3,vars[23]],[6,vars[26]],[9,vars[29]]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    uu:=Unipotent(chevalleyAdj(rep),[[4, -1 ], [ 8, -1 ], [ 10, 1 ], [ 11, -1 ], [ 14, 1 ], [ 15, 1 ], [ 16, 1 ], [ 19, -1 ], [ 21, -1 ], [ 22, -1 ], [ 23, -1 ], [ 25, 1 ], [ 26, 1 ], [ 27, -1 ], [ 28, 1 ], [ 30, -1 ], [ 31, 1 ], [ 32, 1 ], [ 33, -1 ], [ 34, 1 ], [ 36, -1 ], [ 37, -1 ], [ 40, -1 ], [ 41, 1 ], [ 42, 1 ], [ 44, 1 ], [ 47, -1 ], [ 50, 1 ], [ 52, -1 ], [ 54, 1 ], [ 55, -1 ], [ 57, -1 ], [ 61, -1 ], [ 62, 1 ], [ 65, 1 ], [ 69, 1 ], [ 76, -1 ], [ 77, -1 ], [ 78, 1 ], [ 81, -1 ], [ 82, -1 ], [ 83, 1 ], [ 85, -1 ], [ 86, -1 ], [ 91, 1 ], [ 93, -1 ], [ 94, 1 ], [ 97, 1 ], [ 98, -1 ], [ 102, -1 ], [ 103, -1 ], [ 106, 1 ], [ 107, -1 ], [ 108, 1 ], [ 109, -1 ], [ 111, -1 ], [ 114, -1 ], [ 115, -1 ], [ 117, 1 ], [ 118, -1 ] ],Ordering(rep));
    #uu:=Unipotent(chevalleyAdj(rep),[[1,avars[1]],[9,avars[9]]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    #tmp1:=ConjNegUa(tmp1,3,avars[3]);
    
    tmp3:=ConjugateByTori(rep,[4,6,7],[-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,2,vars[2]);
    tmp2:=ConjNegUa(tmp2,5,vars[5]);
    tmp2:=ConjNegUa(tmp2,13,vars[13]);
    tmp2:=ConjNegUa(tmp2,1,vars[1]);
    tmp2:=ConjNegUa(tmp2,3,vars[3]);
    tmp2:=ConjNegUa(tmp2,9,vars[9]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,vars[21]],[3,vars[23]],[6,vars[26]],[9,vars[29]]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    uu:=Unipotent(chevalleyAdj(cent),[[4, -1 ], [ 8, -1 ], [ 10, 1 ], [ 11, -1 ], [ 14, 1 ], [ 15, 1 ], [ 16, 1 ], [ 19, -1 ], [ 21, -1 ], [ 22, -1 ], [ 23, -1 ], [ 25, 1 ], [ 26, 1 ], [ 27, -1 ], [ 28, 1 ], [ 30, -1 ], [ 31, 1 ], [ 32, 1 ], [ 33, -1 ], [ 34, 1 ], [ 36, -1 ], [ 37, -1 ], [ 40, -1 ], [ 41, 1 ], [ 42, 1 ], [ 44, 1 ], [ 47, -1 ], [ 50, 1 ], [ 52, -1 ], [ 54, 1 ], [ 55, -1 ], [ 57, -1 ], [ 61, -1 ], [ 62, 1 ], [ 65, 1 ], [ 69, 1 ], [ 76, -1 ], [ 77, -1 ], [ 78, 1 ], [ 81, -1 ], [ 82, -1 ], [ 83, 1 ], [ 85, -1 ], [ 86, -1 ], [ 91, 1 ], [ 93, -1 ], [ 94, 1 ], [ 97, 1 ], [ 98, -1 ], [ 102, -1 ], [ 103, -1 ], [ 106, 1 ], [ 107, -1 ], [ 108, 1 ], [ 109, -1 ], [ 111, -1 ], [ 114, -1 ], [ 115, -1 ], [ 117, 1 ], [ 118, -1 ] ],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
   
    tmp4:=0;    
    tmp4:=ConjugateByTori(cent,[4,6,7],[-1,-1,-1]);
	 
    return [tmp1,tmp3,tmp2,tmp4,uu];
end;

#
# cls 10: E_8(b_5)
#
handle10char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[10];
    info:=infos[10];

    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,1,1);
    tmp1:=ConjNegUa(tmp1,3,-1);
    tmp1:=ConjNegUa(tmp1,9,-1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[1,-1],[3,1],[5,-1],[6,-1],[9,1],[13,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    uu:=Unipotent(chevalleyAdj(rep),[[8,1],[10,-1],[11,1],[16,-1],[20,1],[21,1],[25,1],[27,-1],[30,-1],[31,1],[32,-1],[33,-1],[37,1],[38,-1],[40,1],[44,-1],[46,-1],[52,1],[55,-1],[59,1],[61,1],[63,1],[64,-1],[69,-1],[82,-1],[90,1],[93,1],[97,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTorus(tmp1,1,-1);

    tmp3:=ConjugateByTorus(rep,18,-1);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,1,1);
    tmp2:=ConjNegUa(tmp2,3,-1);
    tmp2:=ConjNegUa(tmp2,9,-1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[1,-1],[3,1],[5,-1],[6,-1],[9,1],[13,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    uu:=Unipotent(chevalleyAdj(cent),[[8,1],[10,-1],[11,1],[16,-1],[20,1],[21,1],[25,1],[27,-1],[30,-1],[31,1],[32,-1],[33,-1],[37,1],[38,-1],[40,1],[44,-1],[46,-1],[52,1],[55,-1],[59,1],[61,1],[63,1],[64,-1],[69,-1],[82,-1],[90,1],[93,1],[97,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTorus(tmp2,1,-1);

    tmp4:=0;
    tmp4:=ConjugateByTorus(cent,18,-1);
    
    return [tmp1,tmp3,tmp2,tmp4,uu];
end;

# For representative deduced from Seitz' E_8(b_6) given in first table
#
# cls 8: E_8(a_5)
#
#handle8char3:=function(orbs,infos)
#    local tmp1,tmp2,o,info,rep,cent;
#    o:=Classes(orbs)[8];
#    #info:=infos[8];
#    
#    rep:=Representative(o);
#    tmp1:=ConjugateByTori(rep,[3,4,7,8],[-1,-1,-1,-1]);# same as [11,15] should be Z(D_8)
#
#    tmp2:=0;
#    #cent:=FromPositiveBorel(o,info[2]);
#    #tmp2:=ConjugateByTori(cent,[3,4,7,8],[-1,-1,-1,-1]);# same as [11,15] should be Z(D_8)
#    
#    return [tmp1,tmp2];
#end;


# For representative deduced from Seitz' E_8(a_6) used in proof
#
# cls 8: E_8(a_5)
#
handle8char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[8];
    info:=infos[8];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[4,6,7],[-1,-1,-1,-1]);# should be Z(D_8)

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTori(cent,[4,6,7],[-1,-1,-1,-1]);# should be Z(D_8)
    
    return [tmp1,tmp2];
end;

#
# cls 7: E_8(b_4) [1,4,7,8,14,17,19,26]  this doesn't work in char2 
#
handle7char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[7];
    info:=infos[7];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 5: E_8(a_4) [1,4,6,8,17,18,19,21]  this doesn't work in char2 
#
handle5char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[5];
    info:=infos[5];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[4,8],[-1,-1]);# h_4, h_8

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTori(cent,[4,8],[-1,-1]); # h_4, h_8
    
    return [tmp1,tmp2];
end;

#
# cls 4: E_8(a_3) [1,4,6,7,8,17,18,19]  this doesn't work in char2 
#
handle4char3:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[4];
    info:=infos[4];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

