
InstallMethod(TotalDegree,
              "TotalDegree of multivariable polynomial",
              [IsPolynomial],
              function(poly)
              local result;

              result:=ExtRepPolynomialRatFun(poly);
              result:=result{2*[1..Length(result)/2]-1};
              result:=Maximum(List(result,j->Sum(j{2*[1..Length(j)/2]})));
              return result;
end);

InstallMethod(ValuePoly,
              "Value of multivariable polynomial",
              [IsPolynomial,IsList,IsList],
              function(poly,vars,vals)
    local result,ext_rep,ext_vars,
    monom,pos,i,j;

    ext_rep:=ExtRepPolynomialRatFun(poly);
    ext_vars:=List(vars,i->ExtRepPolynomialRatFun(i));
    ext_vars:=List(ext_vars,i->i[1][1]);

    result:=Zero(poly);
    for i in 2*[1..Length(ext_rep)/2]-1 do
        monom:=One(poly);
        for j in 2*[1..Length(ext_rep[i])/2]-1 do
            pos:=Position(ext_vars,ext_rep[i][j]);
            monom:=monom*vals[pos]^ext_rep[i][j+1];
        od;
        monom:=monom*((ext_rep[i+1]*One(poly)));
        result:=result+monom;
    od;

    return result;
end);

pRadical:=function(poly,avars)
    local result,
    ext_rep,ext_avars,
    p,deg,deg_max,p_div,monom,i,j;

    #exterior reprezentation of polynomial and variables
    ext_rep:=ExtRepPolynomialRatFun(poly);
    ext_avars:=List(avars,i->ExtRepPolynomialRatFun(i));
    ext_avars:=List(ext_avars,i->i[1][1]);
    
    # degree of variables in monomials of poly
    deg:=List(ext_rep{2*[1..Length(ext_rep)/2]-1},i->i{2*[1..Length(i)/2]});

    # Adjustment: (poly)^p ---> poly
    p:=Characteristic(poly);
    if Concatenation(deg)=[] then return poly; fi;
    deg_max:=LogInt(Maximum(Concatenation(deg)),p);
    p_div:=Gcd(p^deg_max,Gcd(Concatenation(deg)));
    if p_div>1 then
        result:=Zero(poly);
        for i in 2*[1..Length(ext_rep)/2]-1 do
            monom:=One(poly);
            for j in 2*[1..Length(ext_rep[i])/2]-1 do
                monom:=monom*avars[Position(ext_avars,ext_rep[i][j])]^(ext_rep[i][j+1]/p_div);
            od;
            result:=result+ext_rep[i+1]*monom;
        od;
        return result;
    fi;
    return poly;
end;

Solve:=function(poly,avars)
    local ext_rep,vars,ext_avars,p,
    deg,tot_deg,poz1,pozm,xpoly,xall,x,
    taboo;

    # Adjustment: (poly)^p ---> poly
    poly:=pRadical(poly,avars);
    
    #exterior reprezentation of polynomial and variables
    ext_rep:=ExtRepPolynomialRatFun(poly);
    ext_avars:=List(avars,i->ExtRepPolynomialRatFun(i));
    ext_avars:=List(ext_avars,i->i[1][1]);
    
    # variables of poly
    vars:=Concatenation(ext_rep{2*[1..Length(ext_rep)/2]-1});
    vars:=vars{2*[1..Length(vars)/2]-1};
    # degree of variables in monomials of poly
    deg:=List(ext_rep{2*[1..Length(ext_rep)/2]-1},i->i{2*[1..Length(i)/2]});
    tot_deg:=List(deg,i->Sum(i));
    #ignor constants
    tot_deg:=Filtered(tot_deg,i->i<>0);

    # Restrict: x should not be deduced from x+x^p+y
    taboo:=[];
    if Length(Set(vars))>1 then
    for x in Set(vars) do
        xall:=ext_rep{2*[1..Length(ext_rep)/2]-1};
        xall:=Filtered(xall,i->x in i);
        xpoly:=Filtered(xall,i->Length(i)=2);
        if Length(xpoly)>=2 then
        #    if xall=xpoly then
        #        return [Position(ext_avars,x),Zero(poly),avars[Position(ext_avars,x)]];
        #    fi;
            Add(taboo,Positions(vars,x));
        fi;
    od;
    taboo:=Concatenation(taboo);
    fi;

    p:=Characteristic(poly);
#    if Length(vars)=1 then
#        return [Position(ext_avars,vars[1]),RootsOfUPol(poly)[1],true];
#    fi;
#Error("!");
    if 1 in tot_deg then
        # x^p+P(x)^p
        if Length(Set(vars)) = 1 and Length(Set(tot_deg))>=2 then
#        Print(poly,"\n");
            return [Position(ext_avars,vars[1]),Zero(poly),avars[Position(ext_avars,vars[1])]];
#            return fail;
        fi;
        
##        if Length(Set(vars)) = 1 and not Difference(tot_deg,[1])[1] mod p =0 then
#        if Length(Set(vars)) = 1 and not Set(tot_deg)=[1,p] then
#            Print(poly,"\n");
#            return [Position(ext_avars,vars[1]),Zero(poly),avars[Position(ext_avars,vars[1])]];
##            return fail;
#        fi;
        
        if Length(Set(vars)) = 1 and Maximum(tot_deg)>1 then return fail; fi; # such relations produce infinite loops
        
        # position of variables among monomials of poly
        poz1:=Positions(tot_deg,1);
        poz1:=Difference(poz1,taboo);
        # if all variables are taboo return fail
        if Length(poz1)=0 then return fail; fi;
        # else choose one which is not taboo
        poz1:=poz1[1];
        # position of monomial in ext_rep
        pozm:=Position(ext_rep,[vars[poz1],1]);
        return [Position(ext_avars,vars[poz1]),avars[Position(ext_avars,vars[poz1])]-(ext_rep[pozm+1]^(-1))*poly,true];
    fi;
    return fail;
end;

SolveWithTorsion:=function(poly,avars)
    local ext_rep,vars,ext_avars,
    deg,tot_deg,poz1,pozm,xpoly,x,
    taboo;

    # Adjustment: (poly)^p ---> poly
    poly:=pRadical(poly,avars);
    
    #exterior reprezentation of polynomial and variables
    ext_rep:=ExtRepPolynomialRatFun(poly);
    ext_avars:=List(avars,i->ExtRepPolynomialRatFun(i));
    ext_avars:=List(ext_avars,i->i[1][1]);
    
    # variables of poly
    vars:=Concatenation(ext_rep{2*[1..Length(ext_rep)/2]-1});
    vars:=vars{2*[1..Length(vars)/2]-1};
    # degree of variables in monomials of poly
    deg:=List(ext_rep{2*[1..Length(ext_rep)/2]-1},i->i{2*[1..Length(i)/2]});
    tot_deg:=List(deg,i->Sum(i));
    #ignor constants
    tot_deg:=Filtered(tot_deg,i->i<>0);

    # Restrict: x should not be deduced from x+x^p+y
    taboo:=[];
    if Length(Set(vars))>1 then
    for x in Set(vars) do
        xpoly:=ext_rep{2*[1..Length(ext_rep)/2]-1};
        xpoly:=Filtered(xpoly,i->x in i);
        xpoly:=Filtered(xpoly,i->Length(i)=2);
        if Length(xpoly)>=2 then
            Add(taboo,Positions(vars,x));
        fi;
    od;
    taboo:=Concatenation(taboo);
    fi;
    
#    if Length(vars)=1 then
#        return [Position(ext_avars,vars[1]),RootsOfUPol(poly)[1],true];
#    fi;
#Error("!");
    if 1 in tot_deg then
        # x^p+P(x)^p
        if Length(Set(vars)) = 1 and Length(Set(tot_deg))>=2 then
            return [Position(ext_avars,vars[1]),Zero(poly),avars[Position(ext_avars,vars[1])]];
        fi;
        
        if Length(Set(vars)) = 1 and Maximum(tot_deg)>1 then return fail; fi; # such relations produce infinite loops
        
        # position of variables among monomials of poly
        poz1:=Positions(tot_deg,1);
        poz1:=Difference(poz1,taboo);
        # if all variables are taboo return fail
        if Length(poz1)=0 then return fail; fi;
        # else choose one which is not taboo
        poz1:=poz1[1];
        # position of monomial in ext_rep
        pozm:=Position(ext_rep,[vars[poz1],1]);
        return [Position(ext_avars,vars[poz1]),avars[Position(ext_avars,vars[poz1])]-(ext_rep[pozm+1]^(-1))*poly,true];
    fi;
    return fail;
end;

ReduceRelations:=function(relations,avars,values,APR)
    local result,#relations,
    relations_len,schimbare,Ring,torsion,GB,
    index,sol,i,modulo;

    result:=ShallowCopy(values);
    relations:=List(relations,i->Value(i,avars,result)*One(APR));
    relations:=Filtered(relations,i->i <> Zero(APR));
    relations:=Set(relations);
#    relations:=List(coefficients(u),i->i[2]);
    relations_len:=Length(relations);

#    i:=1;
#    while i<relations_len do
#        modulo:=Concatenation([1..i-1],[i+1..relations_len]);
#        modulo:=relations{modulo};
#        relations:=List(relations,i->PolynomialReducedRemainder(i,relations,MonomialLexOrdering()));
#        relations:=Set(Filtered(relations,i->i <> Zero(APR)));
#        if Length(relations)<relations_len then i:=1; fi;
#        relations_len:=Length(relations);
#    od;
#    Error("!");
#Print("...relations: ",relations,"\n");
    schimbare:=true;
    while relations<>[] and schimbare do
        #Print("@@@",relations_len," ");
#        Print("..relations: ",relations,"\n");
#        Print("--->result: ",result,"\n");
        #GB:=GroebnerBasis(relations,MonomialLexOrdering()); ## ATENTIE AICI
        result:=List(result,i->PolynomialReducedRemainder(i,relations,MonomialLexOrdering()));
        #result:=List(result,i->PolynomialReducedRemainder(i,GB,MonomialLexOrdering()));
#        Print("fresh result:",result,"\n");
        schimbare:=false;
        #Error("!!");
        #refresh relations
        #relations:=List(relations,i->Value(i,avars,result)*One(APR));
        relations:=List(relations,i->ValuePoly(i,avars,result)*One(APR));
#        Print("fresh rels:",relations,"\n");
        relations:=Filtered(relations,i->i <> Zero(APR));
        schimbare:=Length(relations)<relations_len;
        relations_len:=Length(relations);
    od;
#Error("!");
#Print(".relations: ",relations,"\n");
    relations:=Filtered(relations,i->i <> Zero(APR));
    
    return [result,relations];
end;

SolveRelations:=function(relations,avars,values,APR)
    local result,#relations,
    relations_len,schimbare,Ring,torsion,
    index,sol,i;

    result:=ShallowCopy(values);
    relations:=List(relations,i->Value(i,avars,result)*One(APR));
    relations:=Filtered(relations,i->i <> Zero(APR));
    
    relations:=ReduceRelations(relations,avars,result,APR);
#    #Error("!");
    result:=relations[1];
    relations:=relations[2];
#    #relations:=List(coefficients(u),i->i[2]);
    relations_len:=Length(relations);
#        Print("...relations: ",relations,"\n");
   
    Ring:=CoefficientsRing(APR);
    schimbare:=true;
    torsion:=[];
    
    #Error("!");
    while relations<>[] and schimbare do
    ##Print("len:=",Length(relations),"\n");
        schimbare:=false;
        index:=1;
        while index<=relations_len do
        #Print("len===",Length(relations),"\n","index===",index,"\n");
            sol:=Solve(relations[index],avars);
            #Print("solved ",relations[index],"\n");
            #Error("!");
            #sol:=fail;
            if sol<>fail then
                #change result
                result[sol[1]]:=sol[2];
                for i in [1..Length(result)] do
                    if not result[i] in Ring and result[i]<>avars[i] then
                       result[i]:=Value(result[i],avars,result)*One(APR);
                    fi;
                od;
                #refresh relations
                relations:=List(relations,i->Value(i,avars,result)*One(APR));
                relations:=Filtered(relations,i->i <> Zero(APR));
                #relations:=ReduceRelations(relations,avars,result,APR);
                #result:=relations[1];
                #relations:=relations[2];
                schimbare:=Length(relations)<relations_len or sol[2]=Zero(APR);
                relations_len:=Length(relations);

                if Length(sol)=3 and sol[3] in avars then Add(torsion,sol[3]); fi;
            fi;
            index:=index+1;
        od;
    od;

    return [result,relations,torsion];
end;
