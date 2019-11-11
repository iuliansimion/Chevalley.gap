

handle:=function(alg)
    local orbs,centralizers,centres;
    orbs:=UnipotentClasses(alg,"");
    centralizers:=List(Classes(orbs),i->UnipotentCentralizer(BorelRep(i)));

    return centralizers;
end;

handleClass:=function(orb)
    local rep,dist_par,co_dist_par,centralizer,center,sys,w,decomp,supp_roots,
    in_borel,not_in_borel,k,
    p,dimensions;

    Print(Label(orb),"\n");
#    orb:=Classes(orbs)[i];
    dist_par:=DistinguishedParabolic(orb);
    rep:=BorelRep(orb);
    centralizer:=UnipotentCentralizer(rep);
    center:=Zentrum(centralizer[1]);
    sys:=chevalleyAdj(rep);
    w:=Witt(LogInt(Order(rep),Characteristic(sys)),sys);
    decomp:=WittDecomposition(center,w);
    supp_roots:=List(decomp,i->List(coefficients(i),j->j[1]));
    dist_par:=ToPositiveBorel(orb,0Level(dist_par));
    co_dist_par:=Filtered([1..Length(positiveRoots(sys))],i->not i in dist_par);

    in_borel:=[];
    not_in_borel:=[];
    for k in [1..Length(decomp)] do
        if IsSubset(dist_par,supp_roots[k]) then Add(in_borel,k);
        elif IsSubset(co_dist_par,supp_roots[k]) then Add(not_in_borel,k);
        else Print("handleClass: the centre is skew !!!\n"); fi;
    od;

    #p:=Characteristic(sys);

    return [centralizer,center,decomp,[in_borel,not_in_borel],dist_par];
end;

handleClassShort:=function(orb)
    local rep,dist_par,co_dist_par,centralizer,center,sys,w,decomp,supp_roots,
    in_borel,not_in_borel,k,
    p,dimensions;

    Print(Label(orb),"\n");
#    orb:=Classes(orbs)[i];
    dist_par:=DistinguishedParabolic(orb);
    rep:=BorelRep(orb);
    centralizer:=UnipotentCentralizer(rep);
    center:=Zentrum(centralizer[1]);

    decomp:=ParameterPieces(center);
    sys:=chevalleyAdj(rep);
    supp_roots:=List(decomp,i->List(coefficients(i),j->j[1]));
    dist_par:=ToPositiveBorel(orb,0Level(dist_par));
    co_dist_par:=Filtered([1..Length(positiveRoots(sys))],i->not i in dist_par);

    #in_borel:=[];
    #not_in_borel:=[];
    #Error("1");
    for k in [1..Length(decomp)] do
        if not IsSubset(dist_par,supp_roots[k]) and not IsSubset(co_dist_par,supp_roots[k]) then
            Print("handleClass: the centre is skew !!!\n");
        fi;
    od;

    return [centralizer[1],Subword(center,dist_par),center];
#    return [Dimension(centralizer[1]),Dimension(Subword(center,dist_par))];
end;



handleClassesShort:=function(orb)
    local o,info,fis_tmp;
    
    fis_tmp:=Concatenation("~/Workspace/ChevalleyAdj/short",String(Characteristic(algebraicU(orb))),".txt");

    PrintTo(fis_tmp,"");

    for o in Classes(orb) do
        Print(Label(o),"\n");
        info:=handleClassShort(o);
        latexClassShort(o,info);
        #AppendTo(fis_tmp,Label(o)," ",info[1]," ",info[2],"\n");
    od;
end;




#-------------------------------------------------------------------------------



#"reflect unipotent element by w_root's: w_r*x_s*w_r^-1",
ApplyRootsReflections:=function(u,roots)
              local result,
              sys,perm_mat,R,pr,eta,W,ref_mats,ref_mat,root,sign,i,coeffs,check;

              sys:=chevalleyAdj(u);
              #R:=rootSystem(chevalleyAdj(u));
              pr:=positiveRoots(sys);
              #eta:=Eta(R);
              #W:=weylGroup(sys);
              #ref_mats:=RootReflections(W);
              #ref_mat:=Product(ref_mats{roots});
              #perm_matrix:=Inverse(PermutationMatrix(weylGroup(sys),perm));

              #??perm_mat:=Inverse(PermutationMatrix(weylGroup(sys),roots)); ? De ce am inversat aiciasta?
              perm_mat:=PermutationMatrix(weylGroup(sys),roots);

              result:=[];
              coeffs:=coefficients(u);
              for i in coeffs do
                  root:=Position(pr,pr[i[1]]*perm_mat);
                  sign:=PermutationSign(sys,roots,i[1]);
                  result:=Concatenation(result,[[root,sign*i[2]]]);
              od;
#              result:=List([1..Length(result)],i->[Position(pr,ref_mats[root]*pr[result[i][1]]),
#                                                   eta[root][result[i][1]]*result[i][2]]);

#return result;

              check:=[];
              for i in [1..Length(result)] do
                  if result[i][1]=fail then
                      check:=Concatenation(check,[coeffs[i][1]]);
                  fi;
              od;

              if check<>[] then return Concatenation(String(check)," nu ramane pozitiv\n");
              else
                  result:=Unipotent(sys,result,Ordering(u));
                  if HasOrder(u) then SetOrder(result,Order(u)); fi;
                  return result;
              fi;
end;

ConjugateByTorus:=function(u,root,t)
    local result,coeffs,sys,A_rs;
    sys:=chevalleyAdj(u);
    A_rs:=A(sys);
    coeffs:=coefficients(u);
    coeffs:=List([1..Length(coeffs)],i->[coeffs[i][1],t^A_rs[root][coeffs[i][1]]*coeffs[i][2]]);
    result:=Unipotent(sys,coeffs,Ordering(u));
    if HasOrder(u) then SetOrder(result,Order(u)); fi;
    return result;
end;

ConjugateByTori:=function(u,roots,ts)
    local result,coeffs,sys,A_rs,j;
    sys:=chevalleyAdj(u);
    A_rs:=A(sys);
    coeffs:=coefficients(u);
    for j in [1..Length(roots)] do
        coeffs:=List([1..Length(coeffs)],i->[coeffs[i][1],ts[j]^A_rs[roots[j]][coeffs[i][1]]*coeffs[i][2]]);
    od;
    result:=Unipotent(sys,coeffs,Ordering(u));
    if HasOrder(u) then SetOrder(result,Order(u)); fi;
    return result;
end;

TorusWeight:=function(u,root)
    local result,coeffs,sys,A_rs;
    sys:=chevalleyAdj(u);
    A_rs:=A(sys);
    coeffs:=coefficients(u);
    result:=List([1..Length(coeffs)],i->A_rs[root][coeffs[i][1]]);#???
    return result;
end;

TorusWeight:=function(sys,ts,root)
    local result,A_rs,i;
    A_rs:=A(sys);
    result:=List([1..Length(ts)],i->A_rs[ts[i]][root]);
#    result:=[];
#    for i in [1..Length(ts)] do
#        if ts[i]=0 then Add(result,0);
#        else Add(result,A_rs[ts[i]][root]); #Add(result,A_rs[ts[i]][root]);
#        fi;
#    od;
    return result;
end;

TorusWeights:=function(ts_pow,u)
    local result,u_roots,sys,r,ts;
    sys:=chevalleyAdj(u);
    u_roots:=List(coefficients(u),i->i[1]);
    ts:=Concatenation(List([1..Length(ts_pow)],i->List([1..ts_pow[i]],j->i)));

    result:=[];
    for r in u_roots do
        #Add(result,List([1..Length(roots)],i->A_rs[roots[i]][coeffs[j][1]])); !!! gresit
        Add(result,TorusWeight(sys,ts,r));
    od;
    return result;
end;

Subsystem:=function(u)
    local result,roots,flag,i,j,pos,AA;

    roots:=allRoots(chevalleyAdj(u));
    AA:=A(chevalleyAdj(u));
    result:=List(coefficients(u),i->roots[i[1]]);
    result:=Concatenation(result,-result);
    result:=List(result,i->Position(roots,i));

    flag:=true;
    while flag do
        flag:=false;
        for i in result do
            for j in result do
                pos:=Position(roots,roots[i]+roots[j]);
                if pos<>fail and not pos in result then #and AA[i][j]<> 0 then
                    Add(result,pos);
                    flag:=true;
                fi;
#                pos:=Position(roots,roots[i]-roots[j]);
#                if pos<>fail and not pos in result then
#                    Add(result,pos);
#                    flag:=true;
#                fi;
            od;
        od;
    od;

    return result;
end;


ConjNegUa:=function(u,root,t)
    local result,Cijrs,sys,neg_root,roots,
    suma,param,k,i,cc;

    sys:=chevalleyAdj(u);
    Cijrs:=C(sys);
    neg_root:=root+Length(positiveRoots(sys));
    roots:=allRoots(sys);

    result:=ShallowCopy(coefficients(u));
    i:=1;
    #for i in [1..Length(result)] do
    while i<=Length(result) do
        #aici r si s sunt neg_root si repsectiv i
        k:=1;
        if Cijrs[neg_root][result[i][1]]=fail then return fail; fi;
        
        for cc in Cijrs[neg_root][result[i][1]] do
            suma:=cc[1]*roots[neg_root]+cc[2]*roots[result[i][1]];
            param:=cc[3]*((-1)^cc[1])*(t^cc[1])*(result[i][2]^cc[2]);
            Add(result,[Position(roots,suma),param],i+k);
            k:=k+1;
        od;
        i:=i+k;
    od;

#    Print(result,"\n");
    result:=Unipotent(sys,result,Ordering(u));
    return result;
end;

#-------------------------------------------------------------------------------



Coroot:=function(R,root)
    local bil,pr;
    pr:=positiveRoots(R);
    bil:=BilinearFormMat(R);
    return 2*pr[root]/(pr[root]*bil*pr[root]);
end;

InFundamentalChamber:=function(R,roots)
    local result,
    pr,r,bil,rang,fs,a,flag;
    
    pr:=positiveRoots(R);
    bil:=BilinearFormMat(R);
    rang:=Length(CanonicalGenerators(R)[1]);
    fs:=pr{[1..rang]};
    
    result:=[];
    for r in roots do
        flag:=true;
        for a in fs do
        if a*bil*r<0 then flag:=false; fi;
        od;
        if flag then Add(result,r); fi;
    od;

    return result;
end;
