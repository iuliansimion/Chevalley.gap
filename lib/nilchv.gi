
InstallMethod(NilpotentChv,
              "NilpotentChv element in simple Lie type",
              [IsChevalleyAdj,IsList],
              function(sys,coeffs)
              local object,
              B,admat,l;
              
              if Filtered(coeffs,i->not i[2] in Integers)=[] then
                  coeffs:=List(coeffs,i->[i[1],One(ring(sys))*i[2]]);
              elif Filtered(coeffs,i->not i[2] in ring(sys))<>[] then
                  Error("NilpotentChv: The coefficients ar not in indicated ring.");
              fi;

              object:=Objectify(NewType(NewFamily("NilpotentChvFamily"),
                                        IsAttributeStoringRep and
                                        IsNilpotentChv and
                                        IsAdditiveElementWithInverse and
                                        IsAdditiveElementWithZero),
                                rec());

              SetchevalleyAdj(object,sys);

              # Simplified form of the element (negative root vectors are also allowd "2*Len..")
              coeffs:=Filtered(List([1..2*Length(positiveRoots(sys))],
                                    i->[i,One(ring(sys))*Sum(List(Filtered(coeffs,
                                                                           j->j[1]=i),
                                                                  k->k[2]))]),
                               l->l[2]<>Zero(ring(sys)));

              Setcoefficients(object,coeffs);

              B:=Basis(lieAlgebra(sys));
              if coeffs<>[] then SetLieAlgebraElement(object,Sum(coeffs,i->i[2]*B[i[1]]));
              else SetLieAlgebraElement(object,Zero(lieAlgebra(sys))); fi;
              SetLieAlgebraCoeffs(object,Coefficients(B,LieAlgebraElement(object)));

#              l:=Length(PRoots(R));
#              admat:=AdjointMatrix(B,LieAlgebraElement(e));
#              SetPositiveAde(object,List([1..l],i->admat[i]{[1..l]}));
              
              SetName(object,Concatenation("<nilpotent element for ",
                                           type(sys),String(rank(sys)),
                                           " in characteristic ",String(Characteristic(sys)),">"));
              return object;
end);

InstallMethod(Ascend,
              "If possible embed the parameters in a polynomial ring with coefficients ring the base ring",
              [IsNilpotentChv,IsPolynomialRing],
              function(e,inel)
              local sys,
              check;

              sys:=chevalleyAdj(e);

              if not IsPolynomialRing(inel) then
                  Error("Ascend NilpotentChv: The new ring is not a polynomial ring to embed in!\n");
              elif CoefficientsRing(inel)<>ring(sys) then
                  Error("Ascend NilpotentChv: CoefficientsRing and ring(sys) do not coincide!\n");
              fi;
              
              return NilpotentChv(ChevalleyAdj(sys,inel),List(coefficients(e),i->[i[1],One(inel)*i[2]]));
end);

InstallMethod(Ascend,
              "If possible embed the parameters in a polynomial ring with coefficients ring the base ring",
              [IsNilpotentChv,IsChevalleyAdj],
              function(e,sys)
              local syse,
              check;

              syse:=chevalleyAdj(e);

              if not IsPolynomialRing(ring(sys)) then
                  Error("The new ring is not a polynomial ring to embed in.");
              elif CoefficientsRing(ring(sys))<>ring(syse) then
                  Error("CoefficientsRing and ring(syse) do not coincide.");
              fi;
              
              return NilpotentChv(sys,List(coefficients(e),i->[i[1],One(ring(sys))*i[2]]));
end);

InstallMethod(\*,
              "multiplication by scalar for nilpotent elements s*e",
              [IsRingElement,IsNilpotentChv],
              function(s,e)
              local sys;

              sys:=chevalleyAdj(e);
              if not s in ring(sys) then
                  Error("Scalar*NilpotentChv: Scalar not in ring of nilpotent!\n");
              fi;
    
              return NilpotentChv(sys,List(coefficients(e),i->[i[1],s*i[2]]));
end);

InstallMethod(\+,
              "addition for nilpotent elements e1+e2",
              [IsNilpotentChv,IsNilpotentChv],
              function(e1,e2)
              local sys1,sys2;

              sys1:=chevalleyAdj(e1);
              sys2:=chevalleyAdj(e2);
              if type(sys1)<>type(sys2) or
                 rank(sys1)<>rank(sys2) or
                 ring(sys1)<>ring(sys2) then
                  Error("NilpotentChv+NilpotentChv: Not in the same family!\n");
              fi;
    
              return NilpotentChv(sys1,Concatenation(coefficients(e1),coefficients(e2)));
end);

InstallMethod(AdditiveInverseMutable,
              "additive inverse for nilpotent elements -e1",
              [IsNilpotentChv],
              function(e)
              local sys;

              sys:=chevalleyAdj(e);
    
              return NilpotentChv(sys,List(coefficients(e),i->[i[1],-i[2]]));
end);

InstallMethod(ZeroMutable,
              "Zero vector of the Lie algebra",
              [IsNilpotentChv],
              function(e)
              local sys;
    
              return NilpotentChv(chevalleyAdj(e),[]);
end);
