#
# cls 17: A_2
#
handle17char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[17];
    info:=infos[17];
    
    rep:=Representative(o);
    #pr[15]=[0,0,1,1,1,0]
    #pr[13]=[0,1,1,1,0,0]
    #pr[26]=[1,1,1,2,1,0]
    tmp1:=ApplyRootsReflections(rep,[15,13,26]);
    uu:=Unipotent(chevalleyAdj(rep),[[3,1]]);
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[15,13,26]);
    uu:=Unipotent(chevalleyAdj(cent),[[3,1]]);
    tmp2:=Conj(tmp2,uu);

    return [tmp1,tmp2];
end;


#
# cls 10: D_4(a_1)
#
handle10char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,o,info,rep,cent,uu;
    o:=Classes(orbs)[10];
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
# cls 4: E_6(a_3) for [1,8,9,11,14,19]
#
handle4char2:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=Classes(orbs)[4];
    info:=infos[4];
    
    rep:=Representative(o);
    tmp1:=ConjNegUa(rep,3,1);
    tmp1:=ConjNegUa(tmp1,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[5,1],[6,1],[7,1],[8,1],[13,1],[14,1],[19,1],[20,1],[25,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ConjNegUa(cent,3,1);
    tmp2:=ConjNegUa(tmp2,2,1);
    uu:=Unipotent(chevalleyAdj(cent),[[5,1],[6,1],[7,1],[8,1],[13,1],[14,1],[19,1],[20,1],[25,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;
#
# THIS IS FOR THE E_6(a_3) class of E_6 in char 2
#
#vals:=ShallowCopy(avars);
#vals[3]:=0;
#vals[2]:=0;
#vals[9]:=vals[1];
#vals[5]:=One(APR);
#vals[4]:=0;
#vals[7]:=vals[1]+One(APR);
#vals[6]:=vals[1]+One(APR);
#vals[8]:=One(APR);
#vals[13]:=vals[7];
#vals[14]:=vals[1]+One(APR);
#vals[15]:=0;
#vals[11]:=vals[1];
#vals[18]:=vals[1]^2+vals[1]+vals[16];
#vals[19]:=One(APR);
#vals[20]:=vals[1]^2+vals[12]+One(APR);
#vals[21]:=vals[12];
#vals[22]:=vals[12];
#vals[24]:=vals[1]*vals[10]+vals[1]+vals[10]+vals[12]+vals[18];
#vals[25]:=vals[1]^2+vals[17]+One(APR);
#vals[27]:=vals[17];
#vals[28]:=vals[1]^2+vals[1]+vals[12]+vals[23];
#vals[29]:=vals[23];
#vals[31]:=vals[1]^2*vals[10]+vals[1]^2+vals[1]*vals[12]+vals[10]+vals[16]+vals[23]+vals[26];
#vals[33]:=vals[1]^4+vals[1]^3+vals[1]^2*vals[16]+vals[1]^2+vals[1]*vals[12]+vals[12]^2+vals[1]+vals[16]+vals[23]+vals[26];
#vals[34]:=vals[1]^4+vals[1]^3+vals[1]^2*vals[16]+vals[1]^2+vals[12]^2+vals[12]*vals[17]+vals[1]+vals[16]+vals[30]+vals[32];
#
#vv:=Value(generic,avars,vals);
#vvv:=Value(vv,[avars[1],avars[10],avars[12],avars[16],avars[17],avars[23],avars[26],avars[30],avars[32],avars[35],avars[36]],[0,0,0,0,0,0,0,0,0,0,0]);


