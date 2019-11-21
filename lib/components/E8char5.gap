#
# cls 66: A_2
#
handle66char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[66];
    info:=infos[66];
    
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
# cls 64: A_2A_1
#
handle64char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[64];
    info:=infos[64];
    
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
# cls 60: A_2^2
#
handle60char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[60];
    info:=infos[60];
    
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
# cls 57: D_4(a_1)
#
handle57char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[57];
    info:=infos[57];
    
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
# cls 53: D_4(a_1)A_1 Ross' rep
#
handle53char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[53];
    info:=infos[53];
    
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
# cls 52: A_3A_2 [3,4,2,6,7]
#
handle52char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[52];
    info:=infos[52];
    
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
# cls 51: A_4 [1,2,3,4]
#
handle51char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[51];
    info:=infos[51];
    
    rep:=Representative(o);

    #pr[33]=[0,1,1,1,1,1,0,0]
    #pr[31]=[1,0,1,1,1,1,0,0]
    #pr[64]=[1,1,2,2,2,1,1,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,3],[2,2],[10,2],[11,-1],[17,2]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[33,31,64,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,3],[2,2],[10,2],[11,-1],[17,2]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[2]:=vals[1]+2*One(APR);
#vals[3]:=-(vals[1]-One(APR));
#vals[4]:=-(-vals[2]-One(APR));
#vals[10]:=vals[1]^2+2*vals[1]+vals[9]+3*One(APR);
#vals[11]:=-(-vals[1]-vals[9]+One(APR));
#vals[17]:=-(-vals[1]^2+3*vals[1]+vals[16]+3*One(APR));
# nu am terminat dar am gasit elementul


#
# cls 48: D_4(a_1)A_2
#
handle48char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[48];
    info:=infos[48];
    
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
# cls 47: A_4A_1
#
handle47char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[47];
    info:=infos[47];

    rep:=Representative(o);

    #pr[41]=[0,1,1,1,1,1,1,0]
    #pr[39]=[1,0,1,1,1,1,1,0]
    #pr[57]=[1,1,2,2,2,1,0,0]
    #pr[89]=[1,2,2,4,3,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1],[4,2],[2,2],[10,3],[11,-1],[17,2]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,3,4],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[41,39,57,89]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1],[4,2],[2,2],[10,3],[11,-1],[17,2]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,3,4],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[2]:=vals[1]+2*One(APR);
#vals[3]:=-(-vals[1]+One(APR));
#vals[4]:=-(vals[2]+One(APR));
#vals[10]:=-(vals[1]^2+2*vals[1]-vals[9]+3*One(APR));
#vals[11]:=-(-vals[1]+vals[9]+One(APR));
#vals[17]:=-(-vals[1]^2+3*vals[1]+vals[16]+3*One(APR));
#
# nu e gata dar am gasit elementul


#
# cls 45: D_5(a_1)
#
handle45char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[45];
    info:=infos[45];
    
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
# cls 44: A_4A_1^2
#
handle44char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[44];
    info:=infos[44];

    rep:=Representative(o);

    #pr[71]=[1,1,2,2,2,2,1,0]
    #pr[72]=[1,1,2,2,2,1,1,1]
    #pr[112]=[1,3,3,5,4,3,2,1]
    #pr[111]=[2,2,3,5,4,3,2,1]
    tmp1:=ApplyRootsReflections(rep,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[4,3],[2,3],[10,3],[11,-1],[17,3]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,7],[-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[71,72,112,111]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[4,3],[2,3],[10,3],[11,-1],[17,3]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,7],[-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[2]:=-(-vals[1]+2*One(APR));
#vals[3]:=vals[1]+One(APR);
#vals[4]:=-vals[2]+One(APR);
#vals[10]:=-vals[1]^2+2*vals[1]+vals[9]+2*One(APR);
#vals[11]:=-vals[1]-vals[9]-One(APR);
#vals[17]:=-vals[1]^2+2*vals[1]-vals[16]+3*One(APR);
#
# nu e gata dar am gasit elementul

#
# cls 39: D_4A_2
#
handle39char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[39];
    info:=infos[39];

    rep:=Representative(o);

    #pr[34]=[0,1,0,1,1,1,1,0]
    #pr[35]=[0,0,1,1,1,1,1,0]
    #pr[68]=[0,1,1,2,2,2,1,1]
    tmp1:=ApplyRootsReflections(rep,[34,35,68]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,2],[4,-1],[5,-1],[8,-1],[11,-1],[12,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[4,6,7,8],[-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[34,35,68]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,2],[4,-1],[5,-1],[8,-1],[11,-1],[12,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[4,6,7,8],[-1,-1,-1,-1]);
    
    return [tmp1,tmp2];
end;
#vals[3]:=-(-vals[2]+3*One(APR));
#vals[4]:=-(vals[2]+One(APR));
#vals[5]:=vals[4];
#vals[8]:=-vals[7]-One(APR);
#vals[11]:=-(vals[2]*vals[3]+vals[10]+One(APR));
#vals[12]:=-(-vals[2]+vals[10]-One(APR));
#
# nu e gata dar am gasit elementul


#
# cls 38: E_6(a_3) [1,4,6,17,18,19] this doesn't work in char2
#
handle38char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[38];
    info:=infos[38];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 33: D_6(a_2) 
#
handle33char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[33];
    info:=infos[33];

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
# cls 32: E_6(a_3)A_1 [1,4,6,8,17,18,19] this doesn't work in char2
#
handle32char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[32];
    info:=infos[32];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 31: E_7(a_5)
#
handle31char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[31];
    info:=infos[31];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[2,3,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[4,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[3,4],[-1,-1]);

    tmp3:=ConjugateByTori(rep,[2,3,5],[bbb,bbb,bbb]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[2,3,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[3,4],[-1,-1]);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[2,3,5],[bbb,bbb,bbb]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;

#
# cls 29: E_8(a_7)                           # NOT FINISHED IN CHARACTERISTIC 5
#
handle29char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[29];
    #info:=infos[29];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    #cent:=FromPositiveBorel(o,info[2]);
    #tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 27: D_6(a_1) 
#
handle27char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[27];
    info:=infos[27];

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
# cls 25: E_7(a_4) [1,4,7,14,17,18,19,26] this doesn't work in char2 
#
handle25char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent;
    o:=Classes(orbs)[25];
    info:=infos[25];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTorus(rep,4,-1);# h_1 --> h_4

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjugateByTorus(cent,4,-1);# h_1 --> h_4
    
    return [tmp1,tmp2];
end;

#
# cls 24: E_6(a_1)
#
handle24char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[24];
    info:=infos[24];

    #pr[58]=[1,1,2,2,1,1,1,0]
    #pr[59]=[1,1,1,2,2,1,1,0]
    #pr[61]=[0,1,1,2,2,2,1,0]

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[58,59,61]);
    tmp1:=ConjNegUa(tmp1,4,-1);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[11,-1],[12,3],[10,-1],[5,2],[6,3],[13,3],[18,-1],[19,-1],[20,2],[26,2],[27,2],[32,1],[40,3],[48,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2],[-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[58,59,61]);
    tmp2:=ConjNegUa(tmp2,4,-1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[11,-1],[12,3],[10,-1],[5,2],[6,3],[13,3],[18,-1],[19,-1],[20,2],[26,2],[27,2],[32,1],[40,3],[48,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2],[-1,-1]);
    
    return [tmp1,tmp2,uu];
end;
#vals[2]:=vals[1]+One(APR);
#vals[4]:=0;
#vals[3]:=0;
#vals[5]:=-(-vals[1]+3*One(APR));
#vals[6]:=vals[5]+One(APR);
#vals[10]:=-(-vals[1]+vals[5]-One(APR));
#vals[11]:=-vals[1]-One(APR);
#vals[12]:=-vals[2]+vals[10];
#vals[13]:=-(2*vals[1]^2+2*vals[9]+2*One(APR));
#vals[16]:=-(2*One(APR))^-1*(vals[1]^2+vals[1]-vals[9]);
#vals[17]:=-vals[1]^2-vals[1]-vals[16];
#vals[18]:=-(3*vals[1]^2+3*vals[1]+2*vals[9]-One(APR));
#vals[19]:=vals[1]-vals[16]+One(APR);
#vals[20]:=vals[1]^2+3*vals[1]+vals[18]+2*One(APR);
#
#vals[24]:=-(3*One(APR))^-1*(vals[1]^3+3*vals[1]*vals[9]-vals[1]+vals[23]);
#vals[25]:=vals[1]^3-vals[1]*vals[9]-vals[1]+2*vals[9]+vals[23]-vals[24];
#vals[26]:=-(2*vals[1]^2-vals[1]-vals[9]+vals[23]-One(APR));
#vals[27]:=-vals[1]^3+vals[1]*vals[9]+2*vals[1]+2*vals[9]+vals[24]+One(APR);
#
#vals[30]:=-vals[1]^4+3*vals[1]^3+2*vals[1]^2*vals[9]-vals[1]^2+2*vals[1]*vals[9]-vals[9]^2-vals[23];
#vals[32]:=vals[1]^3+2*vals[1]^2+vals[9]+vals[23]-One(APR);
#vals[33]:=2*vals[1]^4+vals[1]^3-vals[1]^2*vals[9]+2*vals[1]*vals[9]+2*vals[1]-vals[23]+vals[24]+vals[25]-vals[27]+vals[30]-vals[31]+One(APR);
#vals[37]:=-(vals[1]^4+3*vals[1]^3+2*vals[1]^2*vals[9]+vals[1]^2-vals[1]*vals[9]+vals[9]^2-vals[1]-vals[9]+2*vals[23]+vals[31]);
#
#vals[40]:=2*vals[1]^4-vals[1]^3+3*vals[1]^2*vals[9]+3*vals[1]*vals[9]+2*vals[1]-vals[9]+vals[37]-One(APR);
#vals[44]:=-(vals[1]^4+3*vals[1]^3*vals[9]+2*vals[1]^3+2*vals[1]^2*vals[9]+2*vals[1]*vals[9]^2+vals[1]^2-vals[1]*vals[9]+vals[23]-vals[38]);
#vals[48]:=3*vals[1]^5+3*vals[1]^3*vals[9]+3*vals[1]^3+vals[1]^2*vals[9]+vals[1]*vals[9]+vals[9]^2+2*vals[1]+2*vals[9]+vals[23]+vals[37]-vals[38]+vals[45]+3*One(APR);
#
#vals[51]:=-(3*vals[1]^3*vals[9]+2*vals[1]^3*vals[23]-vals[1]^2*vals[9]^2+3*vals[1]^2*vals[9]-vals[1]*vals[23]-vals[9]^2+2*vals[9]*vals[23]-vals[23]^2+vals[38]);
#
# nu e gata dar am gasit elementul


#
# cls 23: D_5A_2 
#
handle23char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[23];
    info:=infos[23];

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
# cls 20: D_7(a_2)
#
handle20char5:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[20];
    info:=infos[20];

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
# cls 18: E_6(a_1)A_1
#
handle18char5:=function(orbs,infos)
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
    uu:=Unipotent(chevalleyAdj(rep),[[2,1],[11,1],[12,2],[5,3],[10,-1],[6,2],[13,3],[18,-1],[19,-1],[20,2],[26,1],[27,3],[32,1],[40,2]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,2,3,5,6],[-1,-1,-1,-1,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[106,105,104]);
    tmp2:=ConjNegUa(tmp2,4,-1);
    uu:=Unipotent(chevalleyAdj(cent),[[2,1],[11,1],[12,2],[5,3],[10,-1],[6,2],[13,3],[18,-1],[19,-1],[20,2],[26,1],[27,3],[32,1],[40,2]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,2,3,5,6],[-1,-1,-1,-1,-1]);
    
    return [tmp1,tmp2,uu];
end;
#vals[2]:=-(vals[1]-One(APR));
#vals[4]:=0;
#vals[3]:=0;
#vals[5]:=vals[1]+3*One(APR);
#vals[6]:=-(-vals[5]+One(APR));
#vals[10]:=-(vals[1]-vals[5]-One(APR));
#vals[11]:=-(vals[1]-One(APR));
#vals[12]:=vals[2]-vals[10];
#vals[13]:=-(2*One(APR))^-1*(-vals[1]^2-vals[9]-One(APR));
#
#vals[16]:=3*vals[1]+vals[9]-vals[13]+3*One(APR);
#vals[17]:=-(-vals[1]^2+vals[1]-vals[16]);
#vals[18]:=-vals[16]-One(APR);
#vals[19]:=-(-vals[1]^2+2*vals[1]+vals[9]-vals[16]-One(APR));
#vals[20]:=vals[1]^2+2*vals[1]-vals[18]+2*One(APR);
#vals[23]:=-(3*One(APR))^-1*(vals[1]^3+2*vals[1]^2+3*vals[1]*vals[9]-vals[1]+2*vals[9]+vals[13]+2*One(APR));
#vals[24]:=-(3*One(APR))^-1*(3*vals[1]^3-vals[1]*vals[9]+2*vals[1]);
#vals[25]:=-(vals[1]^3+vals[1]^2-vals[1]*vals[9]-vals[1]+vals[9]-vals[16]+vals[17]+vals[19]-vals[23]-vals[24]-One(APR));
#vals[26]:=-vals[1]+3*vals[9]+vals[13]-vals[23]+3*One(APR);
#vals[27]:=-(vals[1]^3-vals[1]*vals[9]+3*vals[1]+2*vals[9]-vals[24]+One(APR));
#
#vals[30]:=-(2*vals[1]^3-vals[1]^2*vals[9]+vals[1]^2*vals[13]+vals[1]^2+3*vals[1]*vals[9]+vals[9]*vals[13]-vals[13]^2+2*vals[9]+vals[13]-vals[23]+One(APR));
#vals[32]:=-(vals[1]^3+3*vals[1]^2-vals[9]-vals[23]+One(APR));
#vals[33]:=-(-vals[1]^4+vals[1]^3+vals[1]^2*vals[9]+vals[1]^2*vals[13]+2*vals[1]^2+2*vals[1]*vals[9]-vals[1]*vals[13]+2*vals[1]+2*vals[9]+vals[27]-vals[30]-vals[31]+One(APR));
#vals[37]:=vals[1]^4+3*vals[1]^3+2*vals[1]^2*vals[9]+vals[1]^2-vals[1]*vals[9]+vals[9]^2-vals[9]-vals[23]+vals[31];
#
#vals[40]:=-(2*vals[1]^3+vals[1]^2*vals[9]-vals[1]^2*vals[13]-vals[1]^2+3*vals[1]*vals[9]+3*vals[1]*vals[13]-vals[1]+3*vals[13]-vals[37]);
#
#vals[44]:=-vals[1]^4+3*vals[1]^3*vals[9]-vals[1]^3+3*vals[1]^2*vals[9]+2*vals[1]*vals[9]^2-vals[1]^2+3*vals[1]+3*vals[23]+vals[38];
#
#vals[48]:=-(3*vals[1]^5+3*vals[1]^3*vals[9]-vals[1]^2*vals[9]+2*vals[1]*vals[9]-vals[9]^2+3*vals[9]+3*vals[23]+vals[37]+vals[38]-vals[45]+2*One(APR));
#
#vals[51]:=-vals[1]^6+2*vals[1]^4*vals[9]-vals[1]^4+3*vals[1]^3*vals[9]+2*vals[1]^3*vals[23]+3*vals[1]^3*vals[24]-vals[1]^2*vals[9]^2+2*vals[1]^2*vals[9]+3*vals[1]*vals[9]^2+3*vals[1]*vals[9]*vals[23]-vals[1]*vals[9]*vals[24]+2*vals[1]^2-vals[1]*vals[9]+vals[1]*vals[23]+2*vals[1]*vals[24]-vals[9]^2-vals[9]*vals[23]+3*vals[23]*vals[24]-vals[24]^2+vals[38];
#
# nu e gata dar am gasit elementul


#
# cls 17: E_7(a_3) ([1,4,6,7,15,16,17] in E_7) [1,4,6,7,17,18,19] in E_8 this doesn't work in char2  
#
handle17char5:=function(orbs,infos)
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


#
# cls 16: E_8(b_6)
#
handle16char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[16];
    info:=infos[16];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[23,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,3,4,8],[-1,-1,-1,-1]);

    tmp3:=ConjugateByTori(rep,[1,2,5],[bbb,bbb,bbb^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[23,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,3,4,8],[-1,-1,-1,-1]);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[1,2,5],[bbb,bbb,bbb^2]);
    
    return [tmp1,tmp3,tmp2,tmp2];
end;

#
# cls 15: D_7(a_1)
#
handle15char5:=function(orbs,infos)
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
    tmp1:=ConjugateByTori(tmp1,[2,3,4],[3*One(APR),3*One(APR),-1]);
    #tmp1:=ConjugateByTori(tmp1,[2,3,4],[ccc,ccc,-1]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[113,114]);
    uu:=Unipotent(chevalleyAdj(cent),[[4,1],[11,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,3,4],[3*One(APR),3*One(APR),-1]);
    #tmp2:=ConjugateByTori(tmp2,[2,3,4],[ccc,ccc,-1]);
    
    return [tmp1,tmp2];
end;

#
# cls 12: E_8(a_6)
#
handle12char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu,vars;
    o:=Classes(orbs)[12];
    info:=infos[12];

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[2,3,8,13]);
    uu:=Unipotent(chevalleyAdj(rep),[[18,-1],[29,-1],[31,1],[33,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[2,3,4,5,7,8],[-1,-1,-1,-1,-1,-1]);

    #tmp3:=ConjugateByTori(rep,[2,3,5,6,8],[aaa,aaa,aaa,aaa,aaa^2]);
    tmp3:=ConjugateByTori(rep,[2,3,5,6,8],[bbb,bbb,bbb,bbb,bbb^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[2,3,8,13]);
    uu:=Unipotent(chevalleyAdj(cent),[[18,-1],[29,-1],[31,1],[33,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[2,3,4,5,7,8],[-1,-1,-1,-1,-1,-1]);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[2,3,5,6,8],[bbb,bbb,bbb,bbb,bbb^2]);
	 
    return [tmp1,tmp3,tmp2,tmp4];
end;

#
# cls 10: E_8(b_5)
#
handle10char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[10];
    info:=infos[10];

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(rep),[[19,-1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    tmp1:=ConjugateByTori(tmp1,[1,3,4],[-1,-1,-1]);

    tmp3:=ConjugateByTori(rep,[1,2,5],[bbb,bbb,bbb^2]);

    tmp2:=0;
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[1,2,5]);
    uu:=Unipotent(chevalleyAdj(cent),[[19,-1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[1,3,4],[-1,-1,-1]);

    tmp4:=0;
    tmp4:=ConjugateByTori(cent,[1,2,5],[bbb,bbb,bbb^2]);
    
    return [tmp1,tmp3,tmp2,tmp4];
end;


# For representative deduced from Seitz' E_8(a_6) used in proof
#
# cls 8: E_8(a_5)
#
handle8char5:=function(orbs,infos)
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
handle7char5:=function(orbs,infos)
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
handle5char5:=function(orbs,infos)
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
handle4char5:=function(orbs,infos)
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

