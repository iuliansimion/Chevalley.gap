
#
# ---------- Group Arithmetics ----------
#

InstallMethod(Subword,
              "Subword of a unipotent element by total degree of coefficients",
              [IsUnipotent,IsPosInt],
              function(u,degree)
              local sys,
              coeffs,poly_degree;

              sys:=chevalleyAdj(u);
              if not IsPolynomialRing(ring(sys)) then
                  Error("Subword: The ring is not a polynomial ring to evaluate!\n");
              fi;
              
              coeffs:=Filtered(coefficients(u),i->TotalDegree(i[2])=degree);
              
              return Unipotent(sys,coeffs,Ordering(u));
end);

#
# ---------- Algebraic Operations ----------
#

InstallMethod(Value,
              "Evaluation of the parameter polynomials",
              [IsUnipotent,IsList,IsList],
              function(u,vars,vals)
              local sys,
              lista,i,len;

              sys:=chevalleyAdj(u);
              if not IsPolynomialRing(ring(sys)) then
                  Error("Value: The ring is not a polynomial ring to evaluate.");
              fi;
              
              lista:=List(coefficients(u),i->[i[1],One(ring(sys))*Value(i[2],vars,vals)]);
              i:=1;
              len:=Length(lista);
              while i <= len do
                  if lista[i][2]=Zero(ring(sys)) then
                      Remove(lista,i);
                      len:=len-1;
                  else i:=i+1; fi;
              od;

              return Unipotent(sys,lista,Ordering(u));
              #return Unipotent(chevalleyAdj(sys),lista,Ordering(u)); # which one is better? I multiply by One(ring(sys))
end);

InstallMethod(Descend,
              "Changes the parameters from the polynomial ring to the coefficients ring",
              [IsUnipotent],
              function(u)
              local sys,
              check;

              sys:=chevalleyAdj(u);
              if not IsPolynomialRing(ring(sys)) then
                  Error("The ring is not a polynomial ring to evaluate.");
              fi;

              if IsAlgebraicU(sys) then sys:=chevalleyAdj(u);
              else sys:=ChevalleyAdj(sys,CoefficientsRing(ring(sys))); fi;

              check:=List(coefficients(u),i->LeadingMonomial(i[2]));
              check:=List(check,i->Sum(i{2*[1..Length(i)/2]}));
              check:=Filtered(check,i->i<>0);
              if check=[] then
                  return Unipotent(sys,
                                   List(coefficients(u),i->[i[1],LeadingCoefficient(i[2])]),
                                   Ordering(u),
                                   Order(u));
              fi;

              return fail;
end);

InstallMethod(Descend,
              "If possible changes the parameters from the polynomial ring to the coefficients ring",
              [IsUnipotent,IsChevalleyAdj],
              function(u,sys)
              local sysu,
              check;

              sysu:=chevalleyAdj(u);

              if not IsPolynomialRing(ring(sysu)) then
                  Error("The ring is not a polynomial ring to evaluate.");
              elif CoefficientsRing(ring(sysu))<>ring(sys) then
                  Error("Cannot descend unipotent to given simple adjoint system");
              fi;
              
              check:=List(coefficients(u),i->LeadingMonomial(i[2]));
              check:=List(check,i->Sum(i{2*[1..Length(i)/2]}));
              check:=Filtered(check,i->i<>0);
              if check=[] then
                  return Unipotent(sys,
                                   List(coefficients(u),i->[i[1],LeadingCoefficient(i[2])]),
                                   Ordering(u),
                                   Order(u));
              fi;

              return u;
end);

InstallMethod(Ascend,
              "If possible embed Unipotent into AlgebraicU",
              [IsUnipotent,IsAlgebraicU],
              function(u,sys)
              local sysu,
              check;

              if chevalleyAdj(u)<>chevalleyAdj(sys) then
                  Error("Cannot ascend Unipotent to AlgebraicU: different chevalleyAdj!\n");
              fi;
              
              return Unipotent(sys,
                               List(coefficients(u),i->[i[1],One(ring(sys))*i[2]]),
                               Ordering(u),
                               Order(u));
end);

InstallMethod(Ascend,
              "If possible embed the parameters in a polynomial ring with coefficients ring the base ring",
              [IsUnipotent,IsChevalleyAdj],
              function(u,sys)
              local sysu,
              check;

              sysu:=chevalleyAdj(u);

              if not IsPolynomialRing(ring(sys)) then
                  Error("The new ring is not a polynomial ring to embed in.");
              elif CoefficientsRing(ring(sys))<>ring(sysu) then
                  Error("CoefficientsRing and ring(sysu) do not coincide.");
              fi;
              
              return Unipotent(sys,
                               List(coefficients(u),i->[i[1],One(ring(sys))*i[2]]),
                               Ordering(u),
                               Order(u));
end);

InstallMethod(Ascend,
              "If possible embed the parameters in a polynomial ring with coefficients ring the base ring",
              [IsUnipotent,IsPolynomialRing],
              function(u,inel)
              local sys,
              check;

              sys:=chevalleyAdj(u);

              if not IsPolynomialRing(inel) then
                  Error("The new ring is not a polynomial ring to embed in.");
              elif CoefficientsRing(inel)<>ring(sys) then
                  Error("CoefficientsRing and ring(sys) do not coincide.");
              fi;
              
              return Unipotent(ChevalleyAdj(sys,inel),
                               List(coefficients(u),i->[i[1],One(inel)*i[2]]),
                               Ordering(u),
                               Order(u));
end);



InstallMethod(UnipotentCentralizer,
              "Centralizer of unipotent element in algebraicU",
              [IsUnipotent],
              function(u)
              local result,
              sys,pr,pr_len,uu,
              APR,avars,avars_free,generic,
              relations,sol,torsion,
              i,new_indices;

              sys:=chevalleyAdj(u);
              if not IsAlgebraicU(sys) then
                  sys:=AlgebraicU(sys);
                  u:=Ascend(u,sys);
              fi;
              pr:=positiveRoots(sys);
              pr_len:=Length(pr);
              APR:=ring(sys);
              avars:=IndeterminatesOfPolynomialRing(APR){[1..pr_len]};

              generic:=Unipotent(sys,List([1..pr_len],i->[i,avars[pr_len-i+1]]),[1..pr_len],0);

              result:=List([1..pr_len],i->avars[i]);

              torsion:=[];
              for i in [2..pr_len] do
                  #relations:=coefficients(CommMod(generic,u,i));
              relations:=coefficients(CommMod(u,generic,i));   #!!!ATENTIE CommMod(a,b,i) foloseste Ordering lui b care tre sa fie [1..pr_len]
                  relations:=List(relations,i->i[2]);
              #Print("\nsolving ",i,": ",relations,"\n");
              #if i=8 then Error("!"); fi;
                  sol:=SolveRelations(relations,avars,result,APR);
                  if sol[2]<>[] then Print(" >>>",i," UnipotentCentralizer: could not solve all relations!",relations,"\n"); fi;
                  Add(torsion,sol[3]);
                  result:=sol[1];
                  result:=List(result,i->i*One(APR));
              #Print("result :",result,"\n");
                  generic:=Unipotent(sys,List([1..pr_len],i->[i,result[pr_len-i+1]]),[1..pr_len],0);
              od;

              avars_free:=result{Filtered([1..pr_len],i->result[i] in avars)};
              avars_free:=avars_free{Filtered([1..Length(avars_free)],i->not avars_free[i] in avars_free{[1..i-1]})};

              new_indices:=Reversed([1..Length(avars_free)]);
              result:=List(result,i->Value(i,avars_free,avars{new_indices})*One(APR));
              generic:=Unipotent(sys,List([1..pr_len],i->[i,result[pr_len-i+1]]),[1..pr_len],0);
    
              return [generic,u,Concatenation(torsion),relations];
end);


#
#
#  THIS DOES NOT WORK
#
#
InstallMethod(UnipotentCentralizer2,
              "Centralizer of unipotent element in algebraicU",
              [IsUnipotent],
              function(u)
              local result,
              sys,pr,pr_len,uu,
              APR,avars,avars_free,generic,
              relations,sol,torsion,
              root_support,other_roots,
              i,new_indices;

              sys:=chevalleyAdj(u);
              if not IsAlgebraicU(sys) then
                  sys:=AlgebraicU(sys);
                  u:=Ascend(u,sys);
              fi;
              pr:=positiveRoots(sys);
              pr_len:=Length(pr);
              APR:=ring(sys);
              avars:=IndeterminatesOfPolynomialRing(APR){[1..pr_len]};

              root_support:=[];
              for i in [1..pr_len] do
                  generic:=Unipotent(sys,[[i,avars[1]]]);
                  generic:=Conj(generic,u);
                  if Length(coefficients(generic))=1 and coefficients(generic)[1][2]=avars[1] then Add(root_support,i); fi;
              od;
              other_roots:=Difference([1..pr_len],root_support);

              #generic:=Unipotent(sys,List([1..pr_len],i->[i,avars[pr_len-i+1]]),[1..pr_len],0);
              #generic:=Subword(generic,other_roots);
              generic:=Unipotent(sys,List(other_roots,i->[i,avars[pr_len-i+1]]),[1..pr_len],0);

              result:=List([1..pr_len],i->avars[i]);
              for i in root_support do result[pr_len-i+1]:=Zero(APR); od;

              torsion:=[];
              for i in [2..pr_len] do
                  #relations:=coefficients(CommMod(generic,u,i));
              relations:=coefficients(CommMod(u,generic,i));   #!!!ATENTIE CommMod(a,b,i) foloseste Ordering lui b care tre sa fie [1..pr_len]
                  relations:=List(relations,i->i[2]);
              #Print("\nsolving ",i,": ",relations,"\n");
              #if i=8 then Error("!"); fi;
                  sol:=SolveRelations(relations,avars,result,APR);
                  if sol[2]<>[] then Print(" >>>",i," UnipotentCentralizer: could not solve all relations!",relations,"\n"); fi;
                  Add(torsion,sol[3]);
                  result:=sol[1];
                  result:=List(result,i->i*One(APR));
              #Print("result :",result,"\n");
                  generic:=Unipotent(sys,List([1..pr_len],i->[i,result[pr_len-i+1]]),[1..pr_len],0);
              od;
              Error("!");
              for i in root_support do result[pr_len-i+1]:=avars[pr_len-i+1]; od;

              avars_free:=result{Filtered([1..pr_len],i->result[i] in avars)};
              avars_free:=avars_free{Filtered([1..Length(avars_free)],i->not avars_free[i] in avars_free{[1..i-1]})};

              new_indices:=Reversed([1..Length(avars_free)]);
              result:=List(result,i->Value(i,avars_free,avars{new_indices})*One(APR));
              generic:=Unipotent(sys,List([1..pr_len],i->[i,result[pr_len-i+1]]),[1..pr_len],0);
    
              return [generic,u,Concatenation(torsion),relations];
end);

InstallMethod(TangentSpace,
              "Returns a basis of Nilpotents representing for the tangent space",
              [IsUnipotent],
              function(u)
              local result,
              sysAPR,APR,avars,
              dim,BPR,xvars,
              order,exp,vals,tmp,tmp_len,i,j,monoms;

              sysAPR:=chevalleyAdj(u);
              APR:=ring(sysAPR);
              avars:=IndeterminatesOfPolynomialRing(APR){[1..Length(positiveRoots(sysAPR))]};
              dim:=Length(Set(List(Filtered(coefficients(u),i->i[2] in avars),j->j[2])));
              avars:=avars{[1..dim]};

              vals:=List([1..dim],i->Zero(APR));
              result:=[];
              for i in [1..dim] do
                  vals[i]:=avars[1];
                  tmp:=Value(u,avars,vals);
                  #SetOrder(tmp,Order(u));
                  tmp:=ShallowCopy(coefficients(tmp));
                  tmp_len:=Length(tmp);
                  j:=1;
                  while j <= tmp_len do
                       monoms:=ExtRepPolynomialRatFun(tmp[j][2]);
                       monoms:=List(2*[1..Length(monoms)/2]-1,i->[monoms[i],monoms[i+1]]);
                       monoms:=Filtered(monoms,i->i[1][2]=1);
                       if monoms<>[] then
                          tmp[j]:=[tmp[j][1],monoms[1][2]*One(APR)];
                          j:=j+1;
                      else
                          Remove(tmp,j);
                          tmp_len:=tmp_len-1;
                      fi;
                  od;
                  Add(result,tmp);
                  vals[i]:=Zero(APR);
              od;

              result:=List(result,i->NilpotentChv(sysAPR,i));
              return result;
end);

InstallMethod(Zentrum,
              "Centre of connected unipotent algebraic group",
              [IsUnipotent],
              function(u)
              local result,
              APR,avars,
              relations,
              tang,adu_res,unu;

              APR:=ring(chevalleyAdj(u));
              avars:=IndeterminatesOfPolynomialRing(APR);
              avars:=Filtered(coefficients(u),i->i[2] in avars);
              avars:=Set(List(avars,i->i[2]));

              tang:=TangentSpace(u);
              #Error("!");
              adu_res:=RestrictedAdu(u,tang);
              
              unu:=DiagonalMat(List([1..Length(avars)],i->One(APR)));

              relations:=Concatenation(adu_res-unu);
              relations:=Filtered(relations,i->i<>Zero(APR));

#return relations;

              #Print(avars," with ",relations,"\n");

              result:=SolveRelations(relations,avars,avars,APR);

              if result[2]<>[] then Print("Zentrum: could not solve all relations! ",result[2],"\n"); fi;
    
              return Value(u,avars,result[1]);
end);

InstallMethod(ParameterPieces,
              "Subvarieties for each parameter",
              [IsUnipotent],
              function(u)
              local result,
              sysAPR,APR,avars,avar,
              dim,BPR,xvars,
              order,exp,vals,tmp,tmp_len,i,j,monoms;

              sysAPR:=chevalleyAdj(u);
              APR:=ring(sysAPR);
              avars:=IndeterminatesOfPolynomialRing(APR){[1..Length(positiveRoots(sysAPR))]};
              avar:=avars[1];
              avars:=Set(List(Filtered(coefficients(u),i->i[2] in avars),j->j[2]));
              Sort(avars,function(a,b) return ExtRepPolynomialRatFun(a)[1][1]<ExtRepPolynomialRatFun(b)[1][1]; end);
              dim:=Length(avars);
              #avars:=avars{[1..dim]};

              vals:=List([1..dim],i->Zero(APR));
              result:=[];
              for i in [1..dim] do
                  vals[i]:=avar;#avars[1];
                  tmp:=Value(u,avars,vals);
                  #Print(coefficients(tmp));
                  #SetOrder(tmp,Order(u));
                  tmp:=ShallowCopy(coefficients(tmp));
                  tmp_len:=Length(tmp);
                  Add(result,tmp);
                  vals[i]:=Zero(APR);
              od;

              result:=List(result,i->Unipotent(sysAPR,i,Ordering(u),-2));
              return result;
end);

InstallMethod(Dimension,
              "Dimension of subvariety in unipotent group",
              [IsUnipotent],
              function(u)
              local avars_free;

              avars_free:=List(coefficients(u),i->i[2]);
              avars_free:=List(avars_free,i->ExtRepPolynomialRatFun(i));
              avars_free:=Concatenation(avars_free);
              avars_free:=avars_free{2*[1..Length(avars_free)/2]-1};
              avars_free:=Concatenation(avars_free);
              avars_free:=avars_free{2*[1..Length(avars_free)/2]-1};

              return Length(Set(avars_free));
end);

#
# ---------- Witt Group Operations ----------
#

InstallMethod(GenericWittGroup,
              "Witt group with generic polynomials along the unipotent group gr",
              [IsUnipotent,IsWitt,IsList],
              function(gr,w,values)
              local result,
              coeffs,
              APR,avars,avars_free,avars_free_len,avars_ext,
              BPR,bvars,
              CPR,cvarnames,cvars,
              poly,monom,i,j,k,pos;

              coeffs:=coefficients(gr);

              # APR's
              APR:=ring(chevalleyAdj(gr));
              avars:=IndeterminatesOfPolynomialRing(APR);
              avars_free:=Filtered(coeffs,i->i[2] in avars);
              avars_free:=Set(List(avars_free,i->i[2]));
              Sort(avars_free,function(a,b) return ExtRepPolynomialRatFun(a)[1][1]<ExtRepPolynomialRatFun(b)[1][1]; end);
              avars_free_len:=Length(avars_free);
              avars_ext:=List(avars_free,i->ExtRepPolynomialRatFun(i));
              avars_ext:=List(avars_ext,i->i[1][1]);

              # BPR's
              BPR:=ring(chevalleyAdjBPR(w));

              # CPR's
              cvarnames:=List([1..avars_free_len],i->Concatenation("c_",String(i)));
              CPR:=PolynomialRing(BPR,cvarnames);
              cvars:=IndeterminatesOfPolynomialRing(CPR);


              coeffs:=List(coeffs,i->[i[1],List(ExtRepPolynomialRatFun(i[2]))]);
              result:=[];
              for i in [1..Length(coeffs)] do
                  poly:=Zero(CPR);
                  for j in [1..Length(coeffs[i][2])/2] do
                      monom:=One(CPR);
                      for k in [1..Length(coeffs[i][2][2*j-1])/2] do
                          pos:=Position(avars_ext,coeffs[i][2][2*j-1][2*k-1]);
                          monom:=monom*cvars[pos]^coeffs[i][2][2*j-1][2*k];
                      od;
                      monom:=monom*((coeffs[i][2][2*j]*One(APR))*One(BPR));
                      poly:=poly+monom;
                  od;
                  Add(result,[coeffs[i][1],poly]);
              od;

              result:=List(result,i->[i[1],Value(i[2],cvars,values)]);

              return Unipotent(chevalleyAdjBPR(w),result,Ordering(gr),-2);
end);

InstallMethod(SolveWittRoot,
              "Solution for witt group construction at certain root",
              [IsUnipotent,IsWitt,IsPosInt,IsList,IsInt],
              function(wx,w,root,values,step)
              local result,
              APR,avars,avars_free,avars_free_len,
              BPR,dim,xvar,yvar,wy,
              gws,gen_poly,gen_poly_len,xy_poly,total_degree,relations,i;

              gws:=GenericSum(w);

              # BPR's
              BPR:=ring(chevalleyAdjBPR(w));
              dim:=Dimension(w);
              xvar:=IndeterminatesOfPolynomialRing(BPR){[1..dim]};
              yvar:=IndeterminatesOfPolynomialRing(BPR){dim+[1..dim]};

              wy:=Value(wx,xvar,yvar);
              xy_poly:=coefficients(Subword(wx*wy,[root]));
              if xy_poly=[] then
                  return [Zero(BPR),values,step];
              else
                  xy_poly:=xy_poly[1][2];
              fi;

              # APR's
              APR:=ring(algebraicU(w));
              avars:=IndeterminatesOfPolynomialRing(APR);

              result:=ShallowCopy(values);

              # construct generic polynomial
              total_degree:=TotalDegree(xy_poly);
              gen_poly:=Concatenation(GenericLevelPolynomials(w){[1..total_degree]});
              gen_poly_len:=Length(gen_poly);
              gen_poly:=Sum(List([1..gen_poly_len],i->result[step+i]*gen_poly[i]));

              # contruct relations
              relations:=Value(gen_poly,xvar,gws)-gen_poly-Value(gen_poly,xvar,yvar)-xy_poly;
              relations:=ExtRepPolynomialRatFun(relations);
              relations:=relations{2*[1..Length(relations)/2]};

              # solve relations
              result:=SolveRelations(relations,avars,result,APR);
              if result[2]<>[] then Error("SolveWittRoot: coulde not solve all relations!"); return fail; fi;
              result:=result[1];

              # rearrange free variables 
              avars_free:=Filtered([1..gen_poly_len+step],i->result[i] in avars);
              avars_free:=result{avars_free};
              avars_free_len:=Length(avars_free);
#    result:=List(result,i->i*One(APR));
#    result:=List(result,i->Value(i,avars_free,avars{[1..avars_free_len]})*One(APR));
    
              gen_poly:=Concatenation(GenericLevelPolynomials(w){[1..total_degree]});
              gen_poly:=Sum(List([1..Length(gen_poly)],i->result[i+step]*gen_poly[i]));

              return [gen_poly,result,step+gen_poly_len];
end);

InstallMethod(WittGroup,
              "Witt group of unipotent inside group",
              [IsUnipotent,IsUnipotent,IsWitt],
              function(u,centralizer,w)
              local result,u_ordered,
              APR,avars,avars_free,avars_ext,
              BPR,dim,xvars,xvars_ext,
              coeffs,
              i,j,k,pos,sol,step,values,update_poly,monom,
              wg;

              # APR's
              #APR:=ring(algebraicU(w)); asta de ce nu merge?
              APR:=ring(chevalleyAdj(u));
              avars:=IndeterminatesOfPolynomialRing(APR);

              # BPR's
              BPR:=ring(chevalleyAdjBPR(w));
              dim:=Dimension(w);
              xvars:=IndeterminatesOfPolynomialRing(BPR){[1..dim]};

              # centralizer
              #centralizer:=UnipotentCentralizer(algebraicAdj(w),u,distP);
              avars_free:=Set(List(Filtered(coefficients(centralizer),i->i[2] in avars),j->j[2]));
              Sort(avars_free,function(a,b) return ExtRepPolynomialRatFun(a)[1][1]<ExtRepPolynomialRatFun(b)[1][1]; end);
              avars_ext:=List(avars_free,i->ExtRepPolynomialRatFun(i));
              avars_ext:=List(avars_ext,i->i[1][1]);

              result:=List(avars_free,i->Zero(BPR));
              coeffs:=coefficients(centralizer);
              u_ordered:=Unipotent(chevalleyAdj(u),#algebraicU(w), asta de ce nu merge?
                                   coefficients(u),#coefficients(Ascend(u,simpleAdjAPR(algebraicAdj(w)))),
                                   [1..Length(positiveRoots(chevalleyAdjBPR(w)))],
                                   -2);
              for i in coefficients(u_ordered) do
                  k:=Filtered(coeffs,j->j[1]=i[1]);
                  if k = [] then return fail; fi;
                  k:=k[1];
                  if k[2] in avars_free then
                      pos:=Position(avars_free,k[2]);
                      result[pos]:=xvars[1];
                  fi;
              od;
              wg:=GenericWittGroup(centralizer,w,result);


              # function for handeling free variables udpate
              xvars_ext:=List(xvars,i->ExtRepPolynomialRatFun(i));
              xvars_ext:=List(xvars_ext,i->i[1][1]);
              update_poly:=function(poly,values)
                  local result,
                  monom,ext,j,k,pos;
                  result:=Zero(BPR);
                  ext:=ExtRepPolynomialRatFun(poly);
                  for j in [1..Length(ext)/2] do
                      monom:=One(BPR);
                      for k in [1..Length(ext[2*j-1])/2] do
                          pos:=Position(xvars_ext,ext[2*j-1][2*k-1]);
                          monom:=monom*xvars[pos]^ext[2*j-1][2*k];
                      od;
                      monom:=monom*(Value(ext[2*j],avars,values)*One(APR));
                      result:=result+monom;
                  od;
                  return result;
              end;


              values:=ShallowCopy(avars);
              step:=0;
              for i in coeffs do
                  if i[2] in avars_free then
                      pos:=Position(avars_free,i[2]);
                      if result[pos]=Zero(BPR) then
                          # value of free variable
                          sol:=SolveWittRoot(wg,w,i[1],values,step);
                          #if sol=fail then return fail; fi;
                          values:=sol[2];
                          step:=sol[3];
                          # update the construction made so far
                          result:=List(result,i->update_poly(i,values));
                          # set free variable
                          result[pos]:=sol[1];
                          # rebuild group
                          wg:=GenericWittGroup(centralizer,w,result);
                      fi;
                  fi;
              od;
    
              return wg;
end);

InstallMethod(TestWittGroup,
              "Test if the given unipotent element has the structure of a given witt group",
              [IsUnipotent,IsWitt],
              function(ux,w)
              local dim,p,BPR,xvar,yvar,
              uy,uxy,xcoeff,xycoeff,
              gws,i;

              dim:=Dimension(w);
              BPR:=ring(chevalleyAdjBPR(w));
              xvar:=IndeterminatesOfPolynomialRing(BPR){[1..dim]};
              yvar:=IndeterminatesOfPolynomialRing(BPR){dim+[1..dim]};

              uy:=Value(ux,xvar,yvar);
              gws:=GenericSum(w);

              uxy:=ux*uy;
              for i in [1..Length(positiveRoots(chevalleyAdj(ux)))] do
                  xcoeff:=coefficients(Subword(ux,[i]));
                  xycoeff:=coefficients(Subword(uxy,[i]));
                  if xcoeff=[] and xycoeff<>[] then return i;
                  elif xcoeff<>[] and xycoeff=[] then return i;
                  elif xcoeff<>[] and xycoeff<>[] and Value(xcoeff[1][2],xvar,gws)<>xycoeff[1][2] then return i;
                  fi;
              od;
              
              return true;
end);

InstallMethod(WittDecomposition,
              "Decomposition of abelian algebraic group into witt group factors",
              [IsUnipotent,IsWitt],
              function(abelian,w)
              local result,
              APR,avars,p,vals,i,tmp,dim,exp,
              handled,support;

              APR:=ring(chevalleyAdj(abelian));
              avars:=IndeterminatesOfPolynomialRing(APR);
              avars:=Filtered(coefficients(abelian),i->i[2] in avars);
              avars:=Set(List(avars,i->i[2]));
              Sort(avars,function(a,b) return ExtRepPolynomialRatFun(a)[1][1]<ExtRepPolynomialRatFun(b)[1][1]; end);
              dim:=Length(avars);
              #    Print("dim=",dim,"\n");

              p:=Characteristic(APR);
              exp:=Maximum(List(ParameterPieces(abelian),i->OrderOp(i)));
              exp:=LogInt(exp,p);

              vals:=List([1..dim],i->Zero(APR));
              result:=[];
              handled:=[];
              for i in [1..dim] do
                  vals[i]:=One(APR);#avars[1];
                  tmp:=Value(abelian,avars,vals);
                  support:=List(coefficients(tmp),i->i[1]);
                  if not IsSubset(handled,support) then
                      #tmp:=WittGr(tmp,abelian,w[LogInt(OrderOp(tmp),p)]);
                      tmp:=WittGroup(tmp,abelian,w);
                      Add(result,tmp);
                      support:=List(coefficients(tmp),i->i[1]);
                      handled:=Concatenation(handled,support);
                  fi;
                  vals[i]:=Zero(APR);
              od;

#    result:=List(result,i->UnipotentLieElement(sysAPR,i,0,ordering(u),1));
              return result;
end);
