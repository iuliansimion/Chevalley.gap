
#
# ---------- Constructors ----------
#

InstallMethod(UnipotentMod,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList,IsList,IsInt,IsPosInt],
              function(sys,coeffs,ordering,order,root)
              local object;
              
              if Filtered(coeffs,i->not i[2] in Integers)=[] then coeffs:=List(coeffs,i->[i[1],One(ring(sys))*i[2]]);
              elif Filtered(coeffs,i->not i[2] in ring(sys))<>[] then Error("The coefficients ar not in indicated ring."); fi;

              object:=Objectify(NewType(NewFamily("UnipotentFamily"),
                                   IsAttributeStoringRep and
                                   IsUnipotent and
                                   IsMultiplicativeElementWithInverse),
                           rec());

              SetchevalleyAdj(object,sys);
              SetOrdering(object,ordering);

              Setcoefficients(object,CanonicMod(sys,coeffs,ordering,root));
#             SetInverse(object,InverseOp(object)); This is set at the first call Inverse(obj);

              if order = -1 and Characteristic(sys)>0 then
                  SetOrder(object,OrderOp(object));
              elif order > -1 then
                  SetOrder(object,order);
              fi;
              
              SetName(object,Concatenation("<unipotent element for ",
                                      type(sys),String(rank(sys)),
                                      " in characteristic ",String(Characteristic(sys)),">"));
              return object;
end);

InstallMethod(UnipotentMod,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList,IsList,IsPosInt],
              function(sys,coeffs,ordering,root)

              return UnipotentMod(sys,coeffs,ordering,-2,root);
end);


#
# ---------- Canonic form of element modulo some roots ----------
#

InstallMethod(CanonicMod,
              "Canonic form of coefficients of unipotent element in given ordering modulo some roots",
              [IsChevalleyAdj,IsList,IsList,IsPosInt],
              function(sys,coeffs,Ordering,root)
              local lista,
              pr,Cijrs,
              flag,i,temp,suma,param,cc,k,pos;
              
              lista:=[];
              for i in coeffs do
                  if Ordering[i[1]]<=Ordering[root] then
                      Add(lista,ShallowCopy(i));
                  fi;
              od;
              
              pr:=positiveRoots(sys);

              Cijrs:=C(sys);
              flag:=true;
              while flag do
                  flag:=false;
                  i:=Length(lista);
                  while 0 < i do
                            if lista[i][2] = Zero(ring(sys)) then 
                                Remove(lista,i);
                                flag:=true;
                            elif 1 < i and lista[i][1] = lista[i-1][1] then
                                lista[i-1][2]:=lista[i-1][2]+lista[i][2];
                                Remove(lista,i);
                                flag:=true;
                            elif 1 < i and Ordering[lista[i][1]] < Ordering[lista[i-1][1]] then
                                temp:=lista[i]; lista[i]:=lista[i-1]; lista[i-1]:=temp;
                                
                                #aici r si s sunt pe pozitia i-1 si repsectiv i
                                k:=1;
                                for cc in Cijrs[lista[i-1][1]][lista[i][1]] do
                                    suma:=cc[1]*pr[lista[i-1][1]]+cc[2]*pr[lista[i][1]];
                                    pos:=Position(pr,suma);
                                    if Ordering[pos]<=Ordering[root] then
                                        param:=cc[3]*((-1)^cc[1])*(lista[i-1][2]^cc[1])*(lista[i][2]^cc[2]);
                                        Add(lista,[pos,param],i+k);
                                        k:=k+1;
                                    fi;
                                od;
                                flag:=true;
                            fi;
                            i:=i-1;
                  od;
              od;

              return Immutable(lista);
end);


#
# ---------- Arithmetic Operations modulo some roots ----------
#

InstallMethod(MMod,
              "Multiplication for unipotent elements a*b modulo some roots and with the ordering of b",
              [IsUnipotent,IsUnipotent,IsPosInt],
              function(u1,u2,root)
              local sys1,sys2,
              generic,result,coeffs1,coeffs2,
              APR,avars,pr_len,
              i;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
    
              return UnipotentMod(sys2,Concatenation(coefficients(u1),coefficients(u2)),Ordering(u2));
end);

InstallMethod(CommMod,
              "Commutator for unipotent elements a^-1b^-1ab with the ordering of b",
              [IsUnipotent,IsUnipotent,IsPosInt],
              function(u1,u2,root)
              local sys1,sys2;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
              return UnipotentMod(sys2,
                                  Concatenation(coefficients(u1^-1),coefficients(u2^-1),
                                                   coefficients(u1),coefficients(u2)),
                                  Ordering(u2),
                                  root);
end);

InstallMethod(ConjMod,
              "Conjugation for unipotent elements b^-1ab with the ordering of b",
              [IsUnipotent,IsUnipotent,IsPosInt],
              function(u1,u2,root)
              local sys1,sys2;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
              return Unipotent(sys2,
                               Concatenation(coefficients(u2^-1),coefficients(u1),coefficients(u2)),
                               Ordering(u2),
                               root);
end);

