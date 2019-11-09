
#
# ---------- Constructors ----------
#

InstallMethod(Unipotent,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList,IsList,IsInt],
              function(sys,coeffs,ordering,order)
              local object;
              
              if Filtered(coeffs,i->not i[2] in Integers)=[] then coeffs:=List(coeffs,i->[i[1],One(ring(sys))*i[2]]);
              elif Filtered(coeffs,i->not i[2] in ring(sys))<>[] then Error("The coefficients ar not in indicated ring."); fi;

              object:=Objectify(NewType(NewFamily("UnipotentFamily"),
                                        IsAttributeStoringRep and
                                        IsUnipotent and
                                        IsMultiplicativeElementWithInverse and
                                        IsMultiplicativeElementWithOne),
                           rec());

              SetchevalleyAdj(object,sys);
              SetOrdering(object,ordering);
              
              Setcoefficients(object,Canonic(sys,coeffs,ordering));
#             SetInverse(object,InverseOp(object)); This is set at the first call Inverse(obj);

              if order = -1 and Characteristic(sys)>0 then
                  SetOrder(object,OrderOp(object));
              elif order > -1 then
                  SetOrder(object,order);
              fi;
              
              SetName(object,Concatenation("<unipotent element for ",type(sys),String(rank(sys)),
                                      " in characteristic ",String(Characteristic(sys)),">"));
              return object;
end);

InstallMethod(Unipotent,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList,IsList],
              function(sys,coeffs,ordering)

              return Unipotent(sys,coeffs,ordering,-2);
end);

InstallMethod(Unipotent,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList,IsInt],
              function(sys,coeffs,order)
              local ordering,tmp,i,slot;
              
              tmp:=ShallowCopy(coeffs);
              Sort(tmp,function(a,b) return a[1]<b[1]; end);

              ordering:=[1..Length(positiveRoots(sys))];
              tmp:=List(tmp,i->ordering[i[1]]);

              for i in [1..Length(coeffs)] do
                  ordering[coeffs[i][1]]:=tmp[i];
              od;                  

              return Unipotent(sys,Filtered(coeffs,i->i[2]<>Zero(ring(sys))),ordering,order);
end);

InstallMethod(Unipotent,
              "Unipotent element in simple adjoint type",
              [IsChevalleyAdj,IsList],
              function(sys,coeffs)

              return Unipotent(sys,coeffs,-2);#-1);
end);

InstallMethod(Unipotent,
              "Unipotent element in simple adjoint type",
              [IsNilpotentChv],
              function(e)

              return Unipotent(chevalleyAdj(e),coefficients(e));
end);


#
# ---------- Canonic form of element ----------
#

InstallMethod(Canonic,
              "Canonic form of coefficients of unipotent element in given ordering",
              [IsChevalleyAdj,IsList,IsList],
              function(sys,coeffs,ordering)
              local lista,
              pr,Cijrs,
              flag,i,temp,suma,param,cc,k;
              
              lista:=List(coeffs,i->ShallowCopy(i));
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
                            elif 1 < i and ordering[lista[i][1]] < ordering[lista[i-1][1]] then
                                temp:=lista[i]; lista[i]:=lista[i-1]; lista[i-1]:=temp;
                                
                                #aici r si s sunt pe pozitia i-1 si repsectiv i
                                k:=1;
                                for cc in Cijrs[lista[i-1][1]][lista[i][1]] do
                                    suma:=cc[1]*pr[lista[i-1][1]]+cc[2]*pr[lista[i][1]];
                                    param:=cc[3]*((-1)^cc[1])*(lista[i-1][2]^cc[1])*(lista[i][2]^cc[2]);
                                    Add(lista,[Position(pr,suma),param],i+k);
                                    k:=k+1;
                                od;
                                flag:=true;
                            fi;
                            i:=i-1;
                  od;
              od;

              return Immutable(lista);
end);

#
# ---------- Arithmetic Operations ----------
#

InstallMethod(InverseMutable,
              "Inverse of unipotent element",
              [IsUnipotent],
              function(u)
              local i,lista,len,reverse_order;
              
              lista:=List(coefficients(u),i->StructuralCopy(i));
              len:=Length(lista);
              for i in [1..len] do
                  Add(lista,[lista[len-i+1][1],-lista[len-i+1][2]]);
                  Remove(lista,len-i+1);
              od;

              reverse_order:=function(o)
                  local maxim;
                  maxim:=Maximum(o);
                  return List(o,i->maxim-i+1);
              end;
              
              return Unipotent(chevalleyAdj(u),lista,reverse_order(Ordering(u)),-2);#0);
end);

InstallMethod(OneMutable,
              "Inverse of unipotent element",
              [IsUnipotent],
              function(u)

              return One(chevalleyAdj(u),[],0);
end);

InstallMethod(\*,
              "Multiplication for unipotent elements a*b with the ordering of b",
              [IsUnipotent,IsUnipotent],
              function(u1,u2)
              local sys1,sys2,
              generic,result,coeffs1,coeffs2,
              APR,avars,pr_len,
              i;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
    
              return Unipotent(sys2,Concatenation(coefficients(u1),coefficients(u2)),Ordering(u2));
end);

InstallMethod(\*,
              "Action of unipotent element u on nilpotent e: u*e",
              [IsUnipotent,IsNilpotentChv],
              function(u,e)
              local result,
              sys1,sys2,Mrsi,pr,
              uas,r,s,i,pos;
    
              sys1:=chevalleyAdj(u);
              sys2:=chevalleyAdj(e);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family.");
              fi;
    
              pr:=positiveRoots(sys1);
              Mrsi:=M(sys1);

              uas:=Reversed(coefficients(u));
              result:=List(coefficients(e),i->ShallowCopy(i));

              # for this see Carter pg.64
              for r in uas do
                  for s in result do
                      for i in [1..Length(Mrsi[r[1]][s[1]])] do
                          pos:=Position(pr,i*pr[r[1]]+pr[s[1]]);
                          result:=Concatenation(result,[[pos,Mrsi[r[1]][s[1]][i]*r[2]^i*s[2]]]);
                      od;
                  od;
              od;

              return NilpotentChv(sys2,result);
end);

InstallMethod(OrderOp,
              "Order of unipotent element",
              [IsUnipotent],
              function(u)
              local result,
              p,u_to_p,putere,i;

              if coefficients(u)=[] then return 1; fi;

              p:=Characteristic(chevalleyAdj(u));

              u_to_p:=u;
              for i in [1..p-1] do u_to_p:=u_to_p*u; od;

              result:=1;
              putere:=u_to_p;
              while coefficients(putere)<>[] do
                  putere:=putere*u_to_p;
                  result:=result+1;
              od;
              
              return p*result;
end);

InstallMethod(Comm,
              "Commutator for unipotent elements a^-1b^-1ab with the ordering of b",
              [IsUnipotent,IsUnipotent],
              function(u1,u2)
              local sys1,sys2;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
              return Unipotent(sys2,
                                  Concatenation(coefficients(u1^-1),coefficients(u2^-1),
                                                     coefficients(u1),coefficients(u2)),
                                  Ordering(u2));
end);

InstallMethod(Conj,
              "Conjugation for unipotent elements b^-1ab with the ordering of b",
              [IsUnipotent,IsUnipotent],
              function(u1,u2)
              local sys1,sys2;

              sys1:=chevalleyAdj(u1);
              sys2:=chevalleyAdj(u2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then Error("Not in the same family."); fi;
              return Unipotent(sys2,
                                  Concatenation(coefficients(u2^-1),coefficients(u1),coefficients(u2)),
                                  Ordering(u2));
end);

InstallMethod(Subword,
              "Subword of a unipotent element by list of roots",
              [IsUnipotent,IsList],
              function(u,l)
              local coeffs;
              coeffs:=Filtered(coefficients(u),i->i[1] in l);
              
              return Unipotent(chevalleyAdj(u),coeffs,Ordering(u));
end);

InstallMethod(InsertWord,
              "Shuffles a word into a unipotent element u according to the ordering of u",
              [IsUnipotent,IsList],
              function(u,word)
              local coeffs,
              sys,check,ord;

              sys:=chevalleyAdj(u);
              check:=ForAll(word,i-> i[2] in ring(sys));
              if not check then
                  Error("The word cannot be shuffled into u: not over the same ring!\n");
              fi;

              coeffs:=coefficients(u);
              coeffs:=Concatenation(coeffs,word);
              ord:=Ordering(u);
              Sort(coeffs,function(a,b) return ord[a[1]]<ord[b[1]]; end);
              coeffs:=Canonic(sys,coeffs,ord);

#              Setcoefficients(u,coeffs); Doesn't work this way

              return Unipotent(sys,coeffs,Ordering(u));
end);


#
# ---------- Lie Algebra Action ----------
#

InstallMethod(AduAlphat,
              "Adu_{alpha}(t) on the whole Lie algebra",
              [IsChevalleyAdj,IsPosInt,IsRingElement],
              function(sys,root,param)
              local result,
              pr,pr_len,roots,
              A_rs,M_rsi,
              L,CB,Rank,B,cochars,h,
              tmp,zero,unu,s,i,poz;

              pr:=positiveRoots(sys);
              pr_len:=Length(pr);
              roots:=Concatenation(pr,-pr);
              
              L:=lieAlgebra(sys);
              CB:=ChevalleyBasis(L);
              Rank:=rank(sys);
              B:=Basis(L);
              cochars:=Cocharacters(L);
              cochars:=List(cochars,i->Coefficients(B,i));
              
              zero:=Zero(ring(sys));
              unu:=One(ring(sys));

              A_rs:=A(sys);
              M_rsi:=M(sys);

              result:=[];
              # s in positive roots
              for s in [1..pr_len] do
                  tmp:=List([1..Dimension(L)],i->zero);
              
                  if s = root then
                      tmp[s]:=unu;
                  else
                      tmp[s]:=unu;
                      for i in [1..Length(M_rsi[root][s])] do
                          poz:=Position(roots,i*roots[root]+roots[s]);
                          tmp[poz]:=M_rsi[root][s][i]*param^i;
                      od;
                  fi;
                  Add(result,tmp);
              od;

              # s in negative roots
              for s in [1..pr_len]+pr_len do
                  tmp:=List([1..Dimension(L)],i->zero);
              
                  if s = root+pr_len then
                      # e_{-r}
                      tmp[s]:=unu;
                      # -t^2*e_{r}
                      tmp[root]:=-param^2;
                      # t*h_{r}
                      tmp:=tmp+param*cochars[root];
                  else
                      tmp[s]:=unu;
                      for i in [1..Length(M_rsi[root][s])] do
                          poz:=Position(roots,i*roots[root]+roots[s]);
                          tmp[poz]:=M_rsi[root][s][i]*param^i;
                      od;
                  fi;
                  Add(result,tmp);
              od;

              # h_s
              for s in [1..Rank] do
                  tmp:=List([1..Dimension(L)],i->zero);
                  # h_s
                  tmp:=tmp+cochars[s];
                  # -A_{sr}*t*e_r
                  tmp[root]:=-A_rs[s][root]*param;
                  Add(result,tmp);
              od;

              return result;#TransposedMat(result);
end);

InstallMethod(Adu,
              "Adu on the whole Lie algebra",
              [IsUnipotent],
              function(u)
              return Product(coefficients(u),i->AduAlphat(chevalleyAdj(u),i[1],i[2]));
end);

InstallMethod(AduJordanBlocksOp,
              "Computes Jordan Blocks of Adu using SageMath",
              [IsUnipotent],
              function(u)
              local sage_script,current_dir,tmp_file,result,
              ad,dim,i,j;

              sage_script:=Concatenation("~/sage/sage-4.7.2-linux-32bit-ubuntu_10.04_lts-i686-Linux/sage ",
                                      "~/workspace/ChevalleyAdj/sage/tmp/jordan.sage");
              current_dir:=Directory("~/workspace/ChevalleyAdj/sage/tmp/");
              tmp_file:=Filename(current_dir,"matrix.sage");
              result:=Filename(current_dir,"blocks.gap");

              #while IsPolynomialRing(ring(chevalleyAdj(u))) do u:=Descend(u,CoefficientsRing(ring(chevalleyAdj(u)))); od;
              if IsAlgebraicU(chevalleyAdj(u)) then u:=Descend(u,chevalleyAdj(chevalleyAdj(u))); fi;
              ad:=Adu(u);
              ad:=List(ad,i->List(i,j->Int(j)));
              PrintTo(tmp_file,"p=",String(Characteristic(chevalleyAdj(u))),"\nmat=");
              AppendTo(tmp_file,"[");
              dim:=Length(ad);
              for i in [1..dim] do
                  AppendTo(tmp_file,"[");
                  for j in [1..dim] do
                      AppendTo(tmp_file,String(ad[i][j]));
                          if j<>dim then AppendTo(tmp_file,","); fi;
                  od;
                  AppendTo(tmp_file,"]");
                  if i<>dim then AppendTo(tmp_file,",\n"); fi;
              od;
              AppendTo(tmp_file,"]");

              Exec(sage_script);

              result:=ReadAsFunction(result);
              result:=result();

              return result;
end);

InstallMethod(PositiveAdu,
              "Ad(u) restricted to Lie(U) where U is spanned by positive root groups",
              [IsUnipotent],
              function(u)
              local result,
              sys,
              baza,b,pr,pr_len;

              sys:=chevalleyAdj(u);
              pr:=positiveRoots(sys);
              pr_len:=Length(pr);
              baza:=List([1..pr_len],i->NilpotentChv(sys,[[i,1]]));

              result:=[];
              for b in baza do
                  result:=Concatenation(result,[u*b]);
              od;

              return List(result,i->LieAlgebraCoeffs(i){[1..pr_len]});
end);

InstallMethod(RestrictedAdu,
              "Ad(u) restricted to a subspace of Lie(U) spanned given (positive) roots",
              [IsUnipotent,IsList],
              function(u,roots)
              local sys,adu,pr,
              croots,check;

              if not IsInt(roots[1]) then TryNextMethod(); fi;

              sys:=chevalleyAdj(u);
              adu:=PositiveAdu(u);
              pr:=positiveRoots(sys);
              croots:=Filtered([1..Length(pr)],i->not i in roots);

              check:=Filtered(Concatenation(List(croots,i->adu[i]{roots})),j->j<>Zero(ring(sys)));
              if check<>[] then Error("Ade cannot be restricted like this."); fi;
              check:=Filtered(Concatenation(List(roots,i->adu[i]{croots})),j->j<>Zero(ring(sys)));
              if check<>[] then Error("Ade cannot be restricted like this."); fi;
              
              return List(roots,i->adu[i]{roots});
end);

InstallMethod(RestrictedAdu,
              "Ad(u) restricted to a subspace of Lie(U) spanned given (positive) roots",
              [IsUnipotent,IsList],
              1,
              function(u,vectors)
              local result,vectors_len,
              adu,img,
              CPR,cvar_names,cvars,cvectors,sysCPR,uu,
              tmp,generic,relations,relations_len,sol,i;

              vectors_len:=Length(vectors);

              cvar_names:=List([1..vectors_len],i->Concatenation("c_",String(i)));
              CPR:=PolynomialRing(ring(chevalleyAdj(u)),cvar_names);
              cvars:=IndeterminatesOfPolynomialRing(CPR);
              sysCPR:=ChevalleyAdj(chevalleyAdj(u),CPR);

              cvectors:=List(vectors,i->Ascend(i,sysCPR));
              uu:=Ascend(u,sysCPR);
              img:=List(cvectors,i->uu*i);

              result:=[];
              for i in [1..vectors_len] do
                  tmp:=ShallowCopy(cvars);
                  generic:=Sum(List([1..vectors_len],i->tmp[i]*cvectors[i]));
                  relations:=List(coefficients(img[i]-generic),i->i[2]);
                  relations:=Filtered(relations,i->i<>Zero(CPR));
              #Error("!");
                  tmp:=SolveRelations(relations,cvars,tmp,CPR);
                  if tmp[2]<>[] then
                      #Error("!");
                      Print("RestrictedAdu: did not solve all relations! ",relations,"\n");
                  fi;
                  tmp:=List(tmp[1],i->Value(i,cvars,cvars));
                  #tmp:=Sum(List([1..vectors_len],i->tmp[i]*vectors[i])); # I want the matrix
                  Add(result,tmp);
              od;

              return result;              
end);

InstallMethod(PositiveFixedspace,
              "Ker of PositiveAdu",
              [IsUnipotent],
              function(u)
              local result,
              adu,sys,unu,pr,pr_len,ns;

              sys:=chevalleyAdj(u);
              pr:=positiveRoots(sys);
              pr_len:=Length(pr);

              adu:=PositiveAdu(u);
              unu:=DiagonalMat(List([1..pr_len],i->One(ring(sys))));
              ns:=NullspaceMat(adu-unu);

              result:=List(ns,v->List([1..pr_len],j->[j,v[j]]));
              result:=List(result,i->NilpotentChv(sys,i));
              
              return result;
end);

InstallMethod(RestrictedFixedspace,
              "Ker of RestrictedAdu",
              [IsUnipotent,IsList],
              function(u,roots)
              local result,
              radu,sys,unu,roots_len,ns;

              sys:=chevalleyAdj(u);
              roots_len:=Length(roots);

              radu:=RestrictedAdu(u,roots);
              unu:=DiagonalMat(List([1..roots_len],i->One(ring(sys))));
              ns:=NullspaceMat(radu-unu);

              result:=List(ns,v->List([1..roots_len],j->[roots[j],v[j]]));
              result:=List(result,i->NilpotentChv(sys,i));
              
              return result;
end);


