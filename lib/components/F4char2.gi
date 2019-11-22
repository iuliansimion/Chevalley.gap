#
# cls 15: A_2
#
handle15char2:=function()
    local tmp1,tmp2,o,info,rep,cent,u;
    o:=AllClasses(orbs)[15];
    info:=infos[15];
    
    rep:=Representative(o);
    #pr[7]=[0,0,1,1]-->[0,1,1,0]
    #pr[13]=[0,1,2,1]-->[1,1,2,0]
    tmp1:=ApplyRootsReflections(rep,[7,13]);
    u:=Unipotent(algebraicU(orbs),[[4,1]]);
    tmp1:=Conj(tmp1,u);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[7,13]);
    tmp2:=Conj(tmp2,u);

    return [tmp1,tmp2];
end;

#
# cls 14: \tilde A_2
#
handle14char2:=function()
    local tmp1,tmp2,o,info,rep,cent,u;
    o:=AllClasses(orbs)[14];
    info:=infos[14];
    
    rep:=Representative(o);
    #pr[8]=[1,0,1,1]-->[0,1,1,1]  
    #pr[10]=[0,0,2,1]-->[0,1,2,0] 
    # merge si [13,11],[19,20] 
    tmp1:=ApplyRootsReflections(rep,[8,10]);
    u:=Unipotent(chevalleyAdj(rep),[[3,1]],Ordering(rep));
    tmp1:=Conj(tmp1,u);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[8,10]);
    u:=Unipotent(chevalleyAdj(rep),[[3,1]],Ordering(cent));
    tmp2:=Conj(tmp2,u);

    return [tmp1,tmp2];
end;


#
# cls 12: B_2
#
handle12char2:=function()
    local tmp1,tmp2,o,info,rep,cent;
    o:=AllClasses(orbs)[12];
    info:=infos[12];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[9]);#pr[9]=[0,1,1,1]-->[1,1,1,0]
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[9]);#pr[9]=[0,1,1,1]-->[1,1,1,0]
    return [tmp1,tmp2];
end;

#
# cls 11: B_2^{(2)} [6,12,22]
#
# here there is no component group
#
handle11char2:=function()
    local rep,cc,zz,uu;
    
    rep:=Unipotent(alg,[[6,1],[12,1],[22,1]]);
    cc:=UnipotentCentralizer(rep);
    zz:=Zentrum(cc[1]);
    uu:=Unipotent(alg,[[1,1]],Ordering(rep));# A_1 the reductive part of the Levi
    
    return [rep,cc,zz,uu,TorusWeights(zz,[1])];
end;

#
# cls 8: C_3(a_1)
#
# here there is no component group
#
handle8char2:=function()
    local o,rep,cc,ccc,zz,zzz,uu,dist_par;

    o:=AllClasses(orbs)[8];
    rep:=BorelRep(o);
    vals:=ShallowCopy(avars);
    vals[1]:=Zero(APR);
    vals[2]:=Zero(APR);
    vals[5]:=Zero(APR);
    vals[6]:=Zero(APR);
    vals[8]:=Zero(APR);
    vals[12]:=vals[11];
    vals[15]:=vals[9];
    vals[18]:=vals[13];
    vals[20]:=vals[16];
    cc:=Value(generic,avars,vals);
    # a_9+a_9^2+a_11^2=0
    #ccc:=Value(cc,[avars[9]],[Zero(APR)]); NU: a_9=0 <=> a_11=0
    
    zz:=Zentrum(infos[8][1]); # centrul centralizatorului calculat inainte
    dist_par:=ToPositiveBorel(o,0Level(DistinguishedParabolic(o)));
    zzz:=Subword(zz,dist_par);
#    uu:=Unipotent(alg,[[1,1]],Ordering(rep));# A_1 the reductive part of the Levi
    
    return [cc,zz,zzz];
end;


##
## cls 7: C_3(a_1)
##
#handle7char3:=function()
#    local tmp1,tmp2,o,info,rep,cent;
#    o:=AllClasses(orbs)[7];
#    info:=infos[7];
#    
#    rep:=Representative(o);
#    tmp1:=ConjugateByTorus(rep,1,-1);# h_1 --> h_4
#    cent:=FromPositiveBorel(o,info[5]);
#    tmp2:=ConjugateByTorus(cent,1,-1);# h_1 --> h_4
#    return [tmp1,tmp2];
#end;


#
# cls 6: F_4(a_3) [4,6,10,18] (finished?)
#
handle6char2:=function()
    local tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,o,info,rep,cent,uu;
    o:=AllClasses(orbs)[6];
    info:=infos[6];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[3]);#pr[3]=[0,0,1,0]-->[0,0,1,0]
    uu:=Unipotent(chevalleyAdj(rep),[[2,-1],[6,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    #tmp1:=ConjugateByTori(tmp1,[1,2,3,4],[1,-1,aaa,aaa^2]);

    tmp3:=ApplyRootsReflections(rep,[5,1]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1]],Ordering(rep));#[1..24]);
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjNegUa(tmp3,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[6,1],[4,1]],Ordering(rep));
    tmp3:=Conj(tmp3,uu);

    #tmp5:=ConjugateByTori(rep,[3],[-1]);
    
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[3]);#pr[3]=[0,0,1,0]-->[0,0,1,0]
    uu:=Unipotent(chevalleyAdj(cent),[[2,-1],[6,1]]);
    tmp2:=Conj(tmp2,uu);
    #tmp2:=ConjugateByTori(tmp2,[1,2,3,4],[1,-1,aaa,aaa^2]);

    tmp4:=ApplyRootsReflections(cent,[5,1]);
    uu:=Unipotent(chevalleyAdj(rep),[[2,1]],Ordering(cent));#[1..24]);
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjNegUa(tmp4,2,1);
    uu:=Unipotent(chevalleyAdj(rep),[[6,1],[4,1]],Ordering(cent));
    tmp4:=Conj(tmp4,uu);
    #tmp4:=ConjugateByTori(tmp4,[3],[aaa]);

    #tmp6:=ConjugateByTori(cent,[3],[-1]);

    
    return [tmp1,tmp3,tmp2,tmp4];
end;


#
# cls 3: F_4(a_2) (finished?)
#
handle3char2:=function()
    local tmp1,tmp2,o,info,rep,cent,uu,
    avars,vals,comp1,comp2;
    o:=AllClasses(orbs)[3];
    info:=infos[3];
    
    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[2,3]);
    uu:=Unipotent(chevalleyAdj(rep),[[1,1],[10,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[2,3]);
    uu:=Unipotent(chevalleyAdj(cent),[[1,1],[10,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);

    avars:=IndeterminatesOfPolynomialRing(ring(chevalleyAdj(rep)));
    vals:=ShallowCopy(avars);
    vals[1]:=One(APR);
    vals[2]:=Zero(APR);
    vals[3]:=Zero(APR);
    vals[4]:=vals[7];
    vals[6]:=vals[7]+One(APR);
    vals[9]:=vals[7];
    vals[5]:=vals[6]+vals[9];
    vals[10]:=One(APR)+vals[7];
    vals[11]:=vals[16]+vals[7]+vals[7]^2;
    vals[12]:=vals[7]*vals[9]+vals[7]+vals[16];
    vals[13]:=vals[9];
    vals[15]:=vals[16]+vals[7]^2;
    vals[17]:=vals[19]+vals[16]+vals[7]+vals[7]^2;
    vals[18]:=vals[16]+vals[7]+vals[7]^2;
    vals[20]:=vals[16]^2+vals[7]+vals[7]^4;
    vals[22]:=vals[7]^4+vals[7]^2+vals[16]^2+vals[7]+vals[16];
    comp1:=Value(generic,avars,vals);


    vals:=ShallowCopy(avars);
    vals[1]:=Zero(APR);
    vals[2]:=Zero(APR);
    vals[3]:=Zero(APR);
    vals[7]:=vals[4];
    vals[6]:=vals[7];
    vals[9]:=vals[7];
    vals[5]:=vals[6]+vals[9];
    vals[10]:=vals[7];
    vals[13]:=vals[9];
    vals[12]:=vals[7]*vals[9]+vals[16];
    vals[11]:=vals[16]+vals[7]^2;
    vals[15]:=vals[16]+vals[7]^2;
    vals[17]:=vals[19]+vals[16]+vals[7]^2;
    vals[18]:=vals[16]+vals[7]^2;
    vals[20]:=vals[16]^2+vals[7]^4;
    vals[22]:=vals[7]^4+vals[7]^2+vals[16]^2+vals[16];
    comp2:=Value(generic,avars,vals);

    return [comp1,comp2,tmp1,tmp2];
end;
#vals:=ShallowCopy(avars);
#vals[1]:=One(APR);
#vals[2]:=Zero(APR);
#vals[3]:=Zero(APR);
#vals[4]:=vals[7];
#vals[6]:=vals[7]+One(APR);
#vals[9]:=vals[7];
#vals[5]:=vals[6]+vals[9];
#vals[10]:=One(APR)+vals[7];
#vals[11]:=vals[16]+vals[7]+vals[7]^2;
#vals[12]:=vals[7]*vals[9]+vals[7]+vals[16];
#vals[13]:=vals[9];
#vals[15]:=vals[16]+vals[7]^2;
#vals[17]:=vals[19]+vals[16]+vals[7]+vals[7]^2;
#vals[18]:=vals[16]+vals[7]+vals[7]^2;
#vals[20]:=vals[16]^2+vals[7]+vals[7]^4;
#vals[22]:=vals[7]^4+vals[7]^2+vals[16]^2+vals[7]+vals[16];
#
#xx:=Value(generic,avars,vals);
#vals:=List([1..Length(avars)],i->Zero(APR));
#vals[7]:=One(APR);
#xx0:=Value(xx,avars,vals);
#xxx:=Value(cc[1],[avars[1],avars[2],avars[3],avars[4],avars[5]],[Zero(APR),Zero(APR),Zero(APR),avars[7]^2+avars[8]*avars[7]+a#vars[7]*avars[14]+One(APR),One(APR)]);
#
#vals:=ShallowCopy(avars);
#vals[1]:=Zero(APR);
#vals[2]:=Zero(APR);
#vals[3]:=Zero(APR);
#vals[7]:=vals[4];
#vals[6]:=vals[7];
#vals[9]:=vals[7];
#vals[5]:=vals[6]+vals[9];
#vals[10]:=vals[7];
#vals[13]:=vals[9];
#vals[12]:=vals[7]*vals[9]+vals[16];
#vals[11]:=vals[16]+vals[7]^2;
#vals[15]:=vals[16]+vals[7]^2;
#vals[17]:=vals[19]+vals[16]+vals[7]^2;
#vals[18]:=vals[16]+vals[7]^2;
#vals[20]:=vals[16]^2+vals[7]^4;
#vals[22]:=vals[7]^4+vals[7]^2+vals[16]^2+vals[16];
##Print("ok");
#yy:=Value(generic,avars,vals);
#vals[8]:=avars[1];#
#vals[16]:=avars[2];#
#vals[14]:=avars[3];#
#vals[19]:=avars[5];#
#vals[21]:=avars[6];#
#vals[23]:=avars[9];#
#vals[24]:=avars[10];#
##vals:=ShallowCopy(avars);
#yy0:=Value(yy,avars,vals);
#yyy:=Value(cc[1],[avars[1],avars[2],avars[3],avars[4],avars[5]],[Zero(APR),Zero(APR),Zero(APR),avars[8]*avars[7]+avars[7]*avars[14],Zero(APR)]);
#
#vals:=List([1..Length(avars)],i->Zero(APR));
#vals[4]:=One(APR);
#vals[16]:=One(APR);
#yy1:=Value(yy,avars,vals);




#
# cls 2: F_4(a_1)
#
handle2char2:=function()
    local tmp1,tmp2,o,info,rep,cent,uu;
    o:=AllClasses(orbs)[2];
    info:=infos[2];
    
    rep:=Representative(o);
    tmp1:=ConjugateByTori(rep,[3,1],[-1,-1]);# h_1 --> h_4, h_3 --> h_3
    uu:=Unipotent(chevalleyAdj(rep),[[3,-1]],Ordering(rep));#pr[3]=[0,0,1,0]-->[0,0,1,0]
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[5]);
    tmp2:=ConjugateByTori(cent,[3,1],[-1,-1]);# h_1 --> h_4, h_3 --> h_3
    uu:=Unipotent(chevalleyAdj(cent),[[3,-1]],Ordering(cent));#pr[3]=[0,0,1,0]-->[0,0,1,0]
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;

