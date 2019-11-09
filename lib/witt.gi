
InstallMethod(Witt,
              "Constructor for Witt Structure",
              [IsPosInt,IsAlgebraicU],
              function(dim,sys)
              local object,
              BPR,xvarnames,yvarnames,xvars,
              p,max_level,generic_poly;
              
              object:=Objectify(NewType(NewFamily("WittFamily"),
                                        IsAttributeStoringRep and
                                        IsWitt),
                                rec());

              SetDimension(object,dim);
              SetCharacteristic(object,Characteristic(sys));
              
              SetalgebraicU(object,sys);

              xvarnames:=List([1..dim],i->Concatenation("x_",String(i)));
              yvarnames:=List([1..dim],i->Concatenation("y_",String(i)));
              BPR:=PolynomialRing(ring(sys),Concatenation(xvarnames,yvarnames));
              xvars:=IndeterminatesOfPolynomialRing(BPR){[1..dim]};

              SetchevalleyAdjBPR(object,ChevalleyAdj(sys,BPR));

              SetGenericSum(object,GenericSumOp(object));# this needs to be set after Characteristic

              p:=Characteristic(sys);

              #max_level:=Maximum(List(positiveRoots(simpleAdj(sys)),i->Sum(i)));
              max_level:=20;
              generic_poly:=function(degree)
                  local result,
                  tuples,tuple_degreeP;
              
                  tuple_degreeP:=function(t)
                      return Sum(List([1..Length(t)],i->t[i]*p^(i-1)));
                  end;

                  #tuples:=Tuples([1..dim+1]-1,dim);
                  tuples:=Tuples([1..max_level]-1,dim);
                  tuples:=Filtered(tuples,i->tuple_degreeP(i)=degree);
                  tuples:=List(tuples,t->List([1..dim],i->xvars[i]^t[i]));
                  tuples:=List(tuples,t->Product(t));
              
                  return tuples;
              end;
              #SetGenericLevelPolynomials(object,List([1..max_level],i->generic_poly(i)));

              generic_poly:=function(level)
                  local result,
                  i,Unu,tmp;
              
                  if level=0 then return [List([1..dim],i->0)]; fi;
                  if level<0 then return []; fi;

                  Unu:=DiagonalMat(List([1..dim],i->1));

                  result:=[];
                  for i in [1..dim] do
                      tmp:=generic_poly(level-p^(i-1));
                      if tmp<>[] then
                          result:=Concatenation(result,List(tmp,j->j+Unu[i]));
                      fi;
                  od;

                  tmp:=[];
                  for i in result do
                      if not i in tmp then
                          tmp:=Concatenation(tmp,[i]);
                      fi;
                  od;

                  return tmp;#result;
              end;
              SetGenericLevelPolynomials(object,List([1..max_level],
                                                     i->List(generic_poly(i),
                                                             j->Product([1..dim],
                                                                        k->xvars[k]^j[k]))));

              SetName(object,Concatenation("<witt structure of dimension ",String(dim),
                                           " over ring of characteristic ",String(p),">"));
              return object;
end);

InstallMethod(GenericSumOp,
              "Polynomials for generic sum in the Witt structure",
              [IsWitt],
              function(w)
              local result,
              p,dim,phiX,phiY,psiXY,phiXY,
              localIPR,Xvarnames,Yvarnames,X,Y,ext_reps,
              BPR,xyvars,i,j,k,poly,monom,pos;
              
              dim:=Dimension(w);
              p:=Characteristic(w);
              BPR:=ring(chevalleyAdjBPR(w));
              
              Xvarnames:=List([1..dim],i->Concatenation("X",String(i)));
              Yvarnames:=List([1..dim],i->Concatenation("Y",String(i)));
              localIPR:=PolynomialRing(Integers,Concatenation(Xvarnames,Yvarnames));
              X:=IndeterminatesOfPolynomialRing(localIPR){[1..dim]};
              Y:=IndeterminatesOfPolynomialRing(localIPR){dim+[1..dim]};
              
              phiX:=List([1..Length(X)],i->Sum(List([1..i],j->p^(j-1)*X[j]^(p^(i-j)))) );
              phiY:=List([1..Length(Y)],i->Sum(List([1..i],j->p^(j-1)*Y[j]^(p^(i-j)))) );
              
              
              psiXY:=[]; 
              phiXY:=phiX+phiY;
              
              for i in [1..Length(phiXY)] do
                  psiXY:=Concatenation(psiXY,[(1/p^(i-1))*(phiXY[i]-Sum(List([1..i-1],j->p^(j-1)*psiXY[j]^(p^(i-j)))))]);
              od;
              
              ext_reps:=List(Concatenation(X,Y),i->ExtRepPolynomialRatFun(i));
              ext_reps:=List(ext_reps,i->i[1][1]);
              
              xyvars:=IndeterminatesOfPolynomialRing(BPR);
              psiXY:=List(psiXY,i->List(ExtRepPolynomialRatFun(i)));
              result:=[];
              for i in [1..Length(psiXY)] do
                  poly:=Zero(BPR);
                  for j in [1..Length(psiXY[i])/2] do
                      monom:=One(BPR);
                      for k in [1..Length(psiXY[i][2*j-1])/2] do
                          pos:=Position(ext_reps,psiXY[i][2*j-1][2*k-1]);
                          monom:=monom*xyvars[pos]^psiXY[i][2*j-1][2*k];
                      od;
                      monom:=monom*psiXY[i][2*j];
                      poly:=poly+monom;
                  od;
                  Add(result,poly);
              od;

              return result;

    # adjust the form to the one I need
#    psiXY_:=List([1..dim],i->psiXY[i]-X[i]-Y[i]);
end);
