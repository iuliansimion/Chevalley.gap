

InstallMethod(ParabolicSystem,
              "Roots of standard parabolic",
              [IsRootSystem,IsList],
              function(R,I)
              local P,graph,order,i_levels;
              P:=Objectify(NewType(NewFamily("ParabolicSystemFamily"),
                                   IsAttributeStoringRep and
                                   IsParabolicSystem),
                           rec());
              SetUnderlyingRootSystem(P,R);
              SetSupportRoots(P,I);
              SetRadicalRoots(P,Filtered(positiveRoots(R),i->InRadical(P,i)));
              SetiRadicalRoots(P,List(RadicalRoots(P),i->Position(positiveRoots(R),i)));
              SetHeight(P,Maximum(List([1..Length(positiveRoots(R))],i->RootHeight(P,i))));
              SetLevels(P,List([1..Height(P)],i->Filtered(positiveRoots(R),j->RootHeight(P,j)=i)));
              i_levels:=List([1..Height(P)],i->Filtered([1..Length(positiveRoots(R))],j->RootHeight(P,positiveRoots(R)[j])=i));
              SetiLevels(P,i_levels);
              i_levels:=Concatenation(i_levels);
              Set0Level(P,Filtered([1..Length(positiveRoots(R))],i->not i in i_levels));
              SetShapes(P,Set(List(positiveRoots(R),i->Shape(P,i))));
              SetLeviModules(P,List(Levels(P),i->Set(List(i,j->LeviModule(P,j)))));
              SetiLeviModules(P,List(iLevels(P),i->Set(List(i,j->iLeviModule(P,j)))));
              SetName(P,Concatenation("<parabolic of ",
                                      SemiSimpleType(UnderlyingLieAlgebra(R)),
                                      " root system with support in ",
                                      String(I),">"));

              order:=function(P)
                  local levels,result,lung,i;
                  levels:=Concatenation(iLevels(P));
                  lung:=Length(levels);
                  result:=List([1..lung],i->0);
                  for i in [1..lung] do
                      result[levels[i]]:=i;
                  od;
                  return result;
              end;

              SetOrdering(P,order(P));

#              SetRootGraph(P,graph(P));
              
              return P;
end);

InstallMethod(Shape,
              "Shape of root",
              [IsParabolicSystem,IsList],
              function(P,root_coeffs)
              local I;
              if not root_coeffs in positiveRoots(UnderlyingRootSystem(P)) then Error("Vector not in root system. "); fi;
              I:=SupportRoots(P);
              return root_coeffs{Filtered([1..Length(root_coeffs)],i->not i in I)};
end);

InstallMethod(Shape,
              "Shape of root",
              [IsParabolicSystem,IsPosInt],
              function(P,root_index)
              if not root_index in [1..Length(positiveRoots(UnderlyingRootSystem(P)))] then Error("Not a root index. "); fi;
              return Shape(P,positiveRoots(UnderlyingRootSystem(P))[root_index]);
end);

InstallMethod(LeviModule,
              "Levi module (vectors) for root vector",
              [IsParabolicSystem,IsList],
              function(P,root_coeffs)
              local I,s;
              if not root_coeffs in positiveRoots(UnderlyingRootSystem(P)) then Error("Vector not in root system. "); fi;
              I:=SupportRoots(P);
              s:=Shape(P,root_coeffs);
              return Filtered(positiveRoots(UnderlyingRootSystem(P)),i->Shape(P,i)=s);
end);

InstallMethod(LeviModule,
              "Levi module (vectors) for root index",
              [IsParabolicSystem,IsPosInt],
              function(P,root_index)
              if not root_index in [1..Length(positiveRoots(UnderlyingRootSystem(P)))] then Error("Not a root index. "); fi;
              return LeviModule(P,positiveRoots(UnderlyingRootSystem(P)[root_index]));
end);

InstallMethod(iLeviModule,
              "Levi module (vectors) for root vector",
              [IsParabolicSystem,IsList],
              function(P,root_coeffs)
              local I,s;
              if not root_coeffs in positiveRoots(UnderlyingRootSystem(P)) then Error("Vector not in root system. "); fi;
              I:=SupportRoots(P);
              s:=Shape(P,root_coeffs);
              return Filtered([1..Length(positiveRoots(UnderlyingRootSystem(P)))],i->Shape(P,i)=s);
end);

InstallMethod(iLeviModule,
              "Levi module (indices) for root vector",
              [IsParabolicSystem,IsPosInt],
              function(P,root_index)
              if not root_index in [1..Length(positiveRoots(UnderlyingRootSystem(P)))] then Error("Not a root index. "); fi;
              return iLeviModule(P,positiveRoots(UnderlyingRootSystem(P))[root_index]);
end);

InstallMethod(LeviModules,
              "Levi modules at a given height",
              [IsParabolicSystem,IsPosInt],
              function(P,i)
              if i > Height(P) then return []; fi;
              return Filtered(LeviModules(P),j->RootHeight(P,j[1])=i);
end);

InstallMethod(iLeviModules,
              "Levi modules at a given height",
              [IsParabolicSystem,IsPosInt],
              function(P,i)
              if i > Height(P) then return []; fi;
              return Filtered(iLeviModules(P),j->RootHeight(P,j[1])=i);
end);

InstallMethod(RootHeight,
              "the level of a root",
              [IsParabolicSystem,IsList],
              function(P,root_coeffs)
              return Sum(Shape(P,root_coeffs));
end);

InstallMethod(RootHeight,
              "the level of a root",
              [IsParabolicSystem,IsPosInt],
              function(P,root_index)
              return Sum(Shape(P,root_index));
end);

InstallMethod(Level,
              "roots at level",
              [IsParabolicSystem,IsPosInt],
              function(P,i)
              if i > Height(P) then return []; fi;
              return Levels(P)[i];
end);

InstallMethod(InRadical,
              "Check for root in radical",
              [IsParabolicSystem,IsList],
              function(P,root_coeffs)
              if not root_coeffs in positiveRoots(UnderlyingRootSystem(P)) then Error("Vector not in root system. "); fi;
              return Length(Filtered([1..Length(root_coeffs)],i->not i in SupportRoots(P) and root_coeffs[i]<>0))>0;
end);
