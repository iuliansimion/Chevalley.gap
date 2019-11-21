#
# A6<E8 (char2) is below
#

#
# cls 31: E8(a7) MIZUNO
#
handle31char2:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44,o,info,rep,cent,uu;
    o:=Classes(orbs)[31];
    info:=infos[31];
    rep:=Representative(o);

    uu:=Unipotent(alg,[[3,1],[16,1],[23,1],[8,1],[51,1],[58,1]],Ordering(rep));
    tmp1:=Conj(rep,uu);

    uu:=Unipotent(alg,[[3,1],[16,1],[8,1],[7,1],[10,1]],Ordering(rep));
    tmp2:=Conj(rep,uu);
    tmp2:=ApplyRootsReflections(tmp2,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,1],[8,1],[26,1],[41,1],[53,1],[80,1]],Ordering(tmp2));
    tmp2:=Conj(tmp2,uu);

    uu:=Unipotent(alg,[[16,1],[6,1],[1,1]],Ordering(rep));
    tmp3:=Conj(rep,uu);
    tmp3:=ConjNegUa(tmp3,7,1);
    tmp3:=ConjNegUa(tmp3,10,1);
    uu:=Unipotent(alg,[[45,1],[51,1]],Ordering(tmp3));
    tmp3:=Conj(tmp3,uu);

    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(rep));
    tmp4:=Conj(rep,uu);
    tmp4:=ConjNegUa(tmp4,6,1);
    tmp4:=ConjNegUa(tmp4,1,1);
    uu:=Unipotent(alg,[[37,1]],Ordering(tmp4));
    tmp4:=Conj(tmp4,uu);

#---
    cent:=FromPositiveBorel(o,info[2]);

    tmp11:=0;
    uu:=Unipotent(alg,[[3,1],[16,1],[23,1],[8,1],[51,1],[58,1]],Ordering(cent));
    tmp11:=Conj(cent,uu);

    tmp22:=0;
    uu:=Unipotent(alg,[[3,1],[16,1],[8,1],[7,1],[10,1]],Ordering(cent));
    tmp22:=Conj(cent,uu);
    tmp22:=ApplyRootsReflections(tmp22,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,1],[8,1],[26,1],[41,1],[53,1],[80,1]],Ordering(tmp22));
    tmp22:=Conj(tmp22,uu);

    tmp33:=0;
    uu:=Unipotent(alg,[[16,1],[6,1],[1,1]],Ordering(cent));
    tmp33:=Conj(cent,uu);
    tmp33:=ConjNegUa(tmp33,7,1);
    tmp33:=ConjNegUa(tmp33,10,1);
    uu:=Unipotent(alg,[[45,1],[51,1]],Ordering(tmp33));
    tmp33:=Conj(tmp33,uu);

    tmp44:=0;
    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(cent));
    tmp44:=Conj(cent,uu);
    tmp44:=ConjNegUa(tmp44,6,1);
    tmp44:=ConjNegUa(tmp44,1,1);
    uu:=Unipotent(alg,[[37,1]],Ordering(tmp44));
    tmp44:=Conj(tmp44,uu);


    return [tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44];
end;

#
# cls 30: E8(a7) MIZUNO
#
handle30char3:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44,o,info,rep,
    cent,uu;
    o:=Classes(orbs)[30];
    info:=infos[30];
    rep:=Representative(o);

    tmp1:=ConjugateByTori(rep,[1,2,29],[-1,-1,-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[23,-1],[8,1],[51,-1],[58,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=ConjugateByTori(rep,[50],[-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[8,1],[7,-1],[10,-1]],Ordering(tmp2));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ApplyRootsReflections(tmp2,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,-1],[8,1],[15,-1],[17,1],[26,1],[41,-1],[53,1],[80,-1]],Ordering(tmp2));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[50,53],[-1,-1]);

#    tmp3:=ConjugateByTori(rep,[31],[1]);
    uu:=Unipotent(alg,[[16,-1],[6,-1],[1,-1]],Ordering(rep));
    tmp3:=Conj(rep,uu);
    tmp3:=ConjNegUa(tmp3,7,1);
    tmp3:=ConjNegUa(tmp3,10,1);
    uu:=Unipotent(alg,[[16,-1],[45,-1],[51,1]],Ordering(tmp3));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[31],[-1]);

    tmp4:=ConjugateByTori(rep,[2,3,5],[-1,-1,-1]);
    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(rep));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjNegUa(tmp4,6,1);
    tmp4:=ConjNegUa(tmp4,1,1);
    tmp4:=Conj(tmp4,uu);
    uu:=Unipotent(alg,[[37,1]],Ordering(tmp4));
    tmp4:=Conj(tmp4,uu);

#---
    cent:=FromPositiveBorel(o,info[2]);

    tmp11:=0;
    tmp11:=ConjugateByTori(cent,[1,2,29],[-1,-1,-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[23,-1],[8,1],[51,-1],[58,1]],Ordering(cent));
    tmp11:=Conj(tmp11,uu);

    tmp22:=0;
    tmp22:=ConjugateByTori(cent,[50],[-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[8,1],[7,-1],[10,-1]],Ordering(tmp22));
    tmp22:=Conj(tmp22,uu);
    tmp22:=ApplyRootsReflections(tmp22,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,-1],[8,1],[15,-1],[17,1],[26,1],[41,-1],[53,1],[80,-1]],Ordering(tmp22));
    tmp22:=Conj(tmp22,uu);
    tmp22:=ConjugateByTori(tmp22,[50,53],[-1,-1]);

    tmp33:=0;
#    tmp33:=ConjugateByTori(rep,[31],[1]);
    uu:=Unipotent(alg,[[16,-1],[6,-1],[1,-1]],Ordering(cent));
    tmp33:=Conj(cent,uu);
    tmp33:=ConjNegUa(tmp33,7,1);
    tmp33:=ConjNegUa(tmp33,10,1);
    uu:=Unipotent(alg,[[16,-1],[45,-1],[51,1]],Ordering(tmp33));
    tmp33:=Conj(tmp33,uu);
    tmp33:=ConjugateByTori(tmp33,[31],[-1]);

    tmp44:=0;
    tmp44:=ConjugateByTori(cent,[2,3,5],[-1,-1,-1]);
    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(cent));
    tmp44:=Conj(tmp44,uu);
    tmp44:=ConjNegUa(tmp44,6,1);
    tmp44:=ConjNegUa(tmp44,1,1);
    tmp44:=Conj(tmp44,uu);
    uu:=Unipotent(alg,[[37,1]],Ordering(tmp44));
    tmp44:=Conj(tmp44,uu);

    return [tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44];
end;

#
# cls 29: E8(a7) MIZUNO
#
handle29char5:=function(orbs,infos)
    local tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44,o,info,rep,
    cent,uu;
    o:=Classes(orbs)[29];
    info:=infos[29];
    rep:=Representative(o);

    tmp1:=ConjugateByTori(rep,[1,2,29],[-1,-1,-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[23,-1],[8,1],[51,-1],[58,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);

    tmp2:=ConjugateByTori(rep,[50],[-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[8,1],[7,-1],[10,-1]],Ordering(tmp2));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ApplyRootsReflections(tmp2,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,-1],[8,1],[15,2],[17,3],[26,1],[41,-1],[53,1],[80,-1]],Ordering(tmp2));
    tmp2:=Conj(tmp2,uu);
    tmp2:=ConjugateByTori(tmp2,[50,53],[-1,-1]);

#    tmp3:=ConjugateByTori(rep,[31],[1]);
    uu:=Unipotent(alg,[[16,-1],[6,-1],[1,-1]],Ordering(rep));
    tmp3:=Conj(rep,uu);
    tmp3:=ConjNegUa(tmp3,7,1);
    tmp3:=ConjNegUa(tmp3,10,1);
    uu:=Unipotent(alg,[[16,2],[45,-1],[51,1]],Ordering(tmp3));
    tmp3:=Conj(tmp3,uu);
    tmp3:=ConjugateByTori(tmp3,[31],[-1]);

    tmp4:=ConjugateByTori(rep,[2,3,5],[-1,-1,-1]);
    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(rep));
    tmp4:=Conj(tmp4,uu);
    tmp4:=ConjNegUa(tmp4,6,1);
    tmp4:=ConjNegUa(tmp4,1,1);
#    tmp4:=Conj(tmp4,uu);
    uu:=Unipotent(alg,[[10,3],[4,3],[37,1]],Ordering(tmp4));
    tmp4:=Conj(tmp4,uu);

#---
    cent:=FromPositiveBorel(o,info[2]);

    tmp11:=0;
    tmp11:=ConjugateByTori(cent,[1,2,29],[-1,-1,-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[23,-1],[8,1],[51,-1],[58,1]],Ordering(cent));
    tmp11:=Conj(tmp11,uu);

    tmp22:=0;
    tmp22:=ConjugateByTori(cent,[50],[-1]);
    uu:=Unipotent(alg,[[3,1],[16,-1],[8,1],[7,-1],[10,-1]],Ordering(tmp22));
    tmp22:=Conj(tmp22,uu);
    tmp22:=ApplyRootsReflections(tmp22,[16,3,8]);
    uu:=Unipotent(alg,[[7,1],[10,1],[3,1],[16,-1],[8,1],[15,2],[17,3],[26,1],[41,-1],[53,1],[80,-1]],Ordering(tmp22));
    tmp22:=Conj(tmp22,uu);
    tmp22:=ConjugateByTori(tmp22,[50,53],[-1,-1]);

    tmp33:=0;
#    tmp33:=ConjugateByTori(rep,[31],[1]);
    uu:=Unipotent(alg,[[16,-1],[6,-1],[1,-1]],Ordering(cent));
    tmp33:=Conj(cent,uu);
    tmp33:=ConjNegUa(tmp33,7,1);
    tmp33:=ConjNegUa(tmp33,10,1);
    uu:=Unipotent(alg,[[16,2],[45,-1],[51,1]],Ordering(tmp33));
    tmp33:=Conj(tmp33,uu);
    tmp33:=ConjugateByTori(tmp33,[31],[-1]);

    tmp44:=0;
    tmp44:=ConjugateByTori(cent,[2,3,5],[-1,-1,-1]);
    uu:=Unipotent(alg,[[10,1],[4,1]],Ordering(cent));
    tmp44:=Conj(tmp44,uu);
    tmp44:=ConjNegUa(tmp44,6,1);
    tmp44:=ConjNegUa(tmp44,1,1);
#    tmp44:=Conj(tmp44,uu);
    uu:=Unipotent(alg,[[10,3],[4,3],[37,1]],Ordering(tmp44));
    tmp44:=Conj(tmp44,uu);

    return [tmp1,tmp2,tmp3,tmp4,tmp11,tmp22,tmp33,tmp44];
end;

#
# cls 30: A_6 (THE RIGHT WAY)
#
handle30char2bun:=function(orbs,infos)
    local tmp1,tmp2,o,info,rep,
    cent,uu;
    o:=Classes(orbs)[30];
    info:=infos[30];

    rep:=Representative(o);
    tmp1:=ApplyRootsReflections(rep,[7,61,97,4,25,4,2,3,5,12,27,39]);# [7,61,97,4,25,4,2,3,5] longest element in E7, [12,27,39] longest element in A6
    uu:=Unipotent(chevalleyAdj(rep),[[3,1],[5,1],[7,1],[11,1],[12,1],[27,1],[28,1]],Ordering(rep));
    tmp1:=Conj(tmp1,uu);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[7,61,97,4,25,4,2,3,5,12,27,39]);# [7,61,97,4,25,4,2,3,5] longest element in E7, [12,27,39] longest element in A6
    uu:=Unipotent(chevalleyAdj(cent),[[3,1],[5,1],[7,1],[11,1],[12,1],[27,1],[28,1]],Ordering(cent));
    tmp2:=Conj(tmp2,uu);
    
    return [tmp1,tmp2];
end;
