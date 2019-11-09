
InstallMethod(AlgebraicU,
              "Simple algebraic of adjoint type",
              [IsString,IsPosInt,IsRing],
              function(Type,Rank,Ring)
              local object,
              avarnames;
              object:=Objectify(NewType(NewFamily("AlgebraicUFamily"),
                                        IsAttributeStoringRep and
                                        IsChevalleyAdj and
                                        IsAlgebraicU),
                                rec());

              Settype(object,Type);
              Setrank(object,Rank);

              SetBaseRing(object,Ring);
              avarnames:=List([1..2*Length(positiveRoots(object))],i->Concatenation("a_{",String(i),"}"));
              Setring(object,PolynomialRing(Ring,avarnames));

              SetCharacteristic(object,Characteristic(Ring));

              SetlieAlgebra(object,SimpleLieAlgebra(Type,Rank,ring(object)));
              SetrootSystem(object,RootSystem(SimpleLieAlgebra(Type,Rank,Integers)));
              SetpositiveRoots(object,positiveRoots(rootSystem(object)));
              SetallRoots(object,Concatenation(
                  positiveRoots(rootSystem(object)),
                  -positiveRoots(rootSystem(object))));
              SetweylGroup(object,WeylGroup(rootSystem(object)));

              SetA(object,A_rs(object));
              SetH(object,Eta(object));
              SetN(object,N_rs(object));
              SetM(object,M_rsi(object));
              SetC(object,C_ijrs(object));

              SetchevalleyAdj(object,ChevalleyAdj(object,Ring));

              SetName(object,Concatenation("<simple adjoint ",Type,String(Rank),
                                           " in characteristic ",String(Characteristic(Ring)),">"));
              
              return object;
end);

InstallMethod(AlgebraicU,
              "Simple algebraic of adjoint type",
              [IsChevalleyAdj],
              function(sys)
              local object,
              avarnames;
              object:=Objectify(NewType(NewFamily("AlgebraicUFamily"),
                                        IsAttributeStoringRep and
                                        IsChevalleyAdj and
                                        IsAlgebraicU),
                                rec());

              Settype(object,type(sys));
              Setrank(object,rank(sys));

              avarnames:=List([1..2*Length(positiveRoots(sys))],i->Concatenation("a_{",String(i),"}"));
              Setring(object,PolynomialRing(ring(sys),avarnames));

              SetCharacteristic(object,Characteristic(sys));

              SetlieAlgebra(object,SimpleLieAlgebra(type(object),rank(object),ring(object)));
              SetrootSystem(object,rootSystem(sys));
              SetpositiveRoots(object,positiveRoots(sys));
              SetallRoots(object,allRoots(sys));
              SetweylGroup(object,weylGroup(sys));

              SetA(object,A(sys));
              SetH(object,H(sys));
              SetN(object,N(sys));
              SetM(object,M(sys));
              SetC(object,C(sys));

              SetBaseRing(object,ring(sys));
              SetchevalleyAdj(object,sys);

              SetName(object,Concatenation("<simple adjoint ",type(object),String(rank(object)),
                                           " in characteristic ",String(Characteristic(object)),">"));
              
              return object;
end);

