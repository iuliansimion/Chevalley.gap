

InstallMethod(UnipotentClass,
              "Unipotent conjugacy class in algebraic group",
              [IsString,IsUnipotent,IsList,IsList],
              function(label,u,torus,parabolics)
              local object,
              sys,permute_rep,exp;

              Print(label,"\n");

              object:=Objectify(NewType(NewFamily("UnipotentClassFamily"),
                                        IsAttributeStoringRep and
                                        IsUnipotentClass),
                                rec());

              sys:=chevalleyAdj(u);
              SetalgebraicU(object,sys);
              SetLabel(object,label);
              SetRepresentative(object,u);
              
#              permute_rep:=function(rep,torus)
#                  local result,signs,pr,perm,perm_matrix;
#              
#                  perm:=PositiveTorusPermutation(rootSystem(sys),torus);
#                  perm_matrix:=Inverse(PermutationMatrix(weylGroup(sys),perm));
#                  pr:=positiveRoots(sys);
#              
#                  #result:=List(rep,j->perm_matrix*pr[j[1]]);
#                  result:=List(rep,j->pr[j[1]]*perm_matrix);
#                  signs:=List(rep,j->PermutationSign(sys,perm,pr[j[1]]));
#                  #Print(List([1..Length(result)],j->[Position(pr,result[j]),signs[j]*rep[j][2]]));
#                  return List([1..Length(result)],j->[Position(pr,result[j]),signs[j]*rep[j][2]]);
#              end;
              
              if torus <> [] then
                  SetCocharacter(object,torus);
                  SetBorelPerm(object,PositiveTorusPermutation(rootSystem(sys),torus));
                  #SetBorelRep(object,Unipotent(sys,permute_rep(coefficients(u),torus)));# !!! Verifica asta
                  #SetBorelRep(object,Unipotent(sys,permute_rep(coefficients(u),torus),
                  #                             [1..Length(positiveRoots(sys))]));# !!! Verifica asta
                  SetBorelRep(object,Unipotent(sys,coefficients(ToPositiveBorel(object,u)),
                                               [1..Length(positiveRoots(sys))]));# !!! Verifica asta
                  SetOrder(BorelRep(object),Order(u));
              fi;
              
              if parabolics <> [[],[]] then
                  SetSupportParabolic(object,ParabolicSystem(rootSystem(sys),parabolics[1]));
                  SetDistinguishedParabolic(object,ParabolicSystem(rootSystem(sys),parabolics[2]));
              fi;

              if HasOrder(u) then SetOrder(object,Order(u)); fi;
#              elif Characteristic(sys)>0 then SetOrder(object,OrderOp(u)); fi; This can take to much time

              SetName(object,Concatenation("<unipotent conjugacy class ",label," for ",type(sys),String(rank(sys)),
                                           " in characteristic ",String(Characteristic(sys)),">"));
              return object;
end);

InstallMethod(ToPositiveBorel,
              "Permutes root to positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsPosInt],
              function(orb,root_index)
              local sys,perm,perm_mat,pr,roots;

              sys:=algebraicU(orb);
              perm:=PositiveTorusPermutation(rootSystem(sys),Cocharacter(orb));
              perm_mat:=Inverse(PermutationMatrix(weylGroup(sys),perm));
              pr:=positiveRoots(sys);
              roots:=allRoots(sys);

              #return Position(pr,perm_mat*roots[root_index]);
              return Position(pr,roots[root_index]*perm_mat);
end);

InstallMethod(ToPositiveBorel,
              "Permutes roots (in roots_index) to positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsList],
              function(orb,roots_index)
              return List(roots_index,i->ToPositiveBorel(orb,i));
end);

InstallMethod(FromPositiveBorel,
              "Permutes root from positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsPosInt],
              function(orb,root_index)
              local sys,perm,perm_mat,pr,roots;

              sys:=algebraicU(orb);
              perm:=PositiveTorusPermutation(rootSystem(sys),Cocharacter(orb));
              perm_mat:=Inverse(PermutationMatrix(weylGroup(sys),Reversed(perm)));
              #perm_mat:=PermutationMatrix(weylGroup(sys),perm);
              pr:=positiveRoots(sys);
              roots:=allRoots(sys);

              #return Position(pr,perm_mat*roots[root_index]);
              return Position(pr,roots[root_index]*perm_mat);
end);


InstallMethod(FromPositiveBorel,
              "Permutes roots (in roots_index) from positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsList],
              function(orb,roots_index)
              return List(roots_index,i->FromPositiveBorel(orb,i));
end);

InstallMethod(ToPositiveBorel,
              "Permutes roots (in roots_index) from positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsUnipotent],
              function(orb,u)
              local result,coeffs,sys,signs,pr,perm,perm_matrix;

              sys:=chevalleyAdj(u);
              
              perm:=BorelPerm(orb);
              #perm_matrix:=Inverse(PermutationMatrix(weylGroup(sys),perm));
              perm_matrix:=PermutationMatrix(weylGroup(sys),Reversed(perm));
              pr:=positiveRoots(sys);
              
              coeffs:=coefficients(u);
              result:=List(coeffs,j->pr[j[1]]*perm_matrix);
              signs:=List(coeffs,j->InversePermutationSign(sys,perm,pr[j[1]]));
              result:=List([1..Length(result)],j->[Position(pr,result[j]),signs[j]*coeffs[j][2]]);
####              result:=List([1..Length(result)],j->[Position(pr,result[j]),coeffs[j][2]]);
#Print(result,"\n");
              if Filtered(result,i->i[1]=fail)<>[] then return fail; fi;
              
              result:=Unipotent(sys,result);#,Ordering(u));
              if HasOrder(u) then SetOrder(result,Order(u)); fi;
              
              return result;
end);

InstallMethod(FromPositiveBorel,
              "Permutes roots (in roots_index) from positive Borel subgroup with the cocharacter",
              [IsUnipotentClass,IsUnipotent],
              function(orb,u)
              local result,coeffs,sys,signs,pr,perm,perm_matrix;

              sys:=chevalleyAdj(u);
              
              perm:=BorelPerm(orb);
              #perm_matrix:=Inverse(PermutationMatrix(weylGroup(sys),perm));
              #perm_matrix:=Inverse(PermutationMatrix(weylGroup(sys),Reversed(perm)));
              perm_matrix:=PermutationMatrix(weylGroup(sys),perm);
              pr:=positiveRoots(sys);
              
              coeffs:=coefficients(u);
              result:=List(coeffs,j->pr[j[1]]*perm_matrix);
              signs:=List(coeffs,j->PermutationSign(sys,perm,pr[j[1]]));
              result:=List([1..Length(result)],j->[Position(pr,result[j]),signs[j]*coeffs[j][2]]);
####              result:=List([1..Length(result)],j->[Position(pr,result[j]),coeffs[j][2]]);

              if Filtered(result,i->i[1]=fail)<>[] then return fail; fi;
              
              result:=Unipotent(sys,result);#,Ordering(u));
              if HasOrder(u) then SetOrder(result,Order(u)); fi;
              
              return result;
end);


#
# ---------- Overclass for classes --------
#

InstallMethod(UnipotentClasses,
              "Over class for unipotent orbits of a simple algebraic group",
              [IsAlgebraicU,IsString],
              function(sys,source)
              local object,
              pr_len,p,
              APR,avarnames,
              file,dir,reps,exps,
              rep,root;
              
              object:=Objectify(NewType(NewFamily("UnipotentClassesFamily"),
                                        IsAttributeStoringRep and
                                        IsUnipotentClasses),
                                rec());

              SetalgebraicU(object,sys);
              p:=Characteristic(sys);

              dir:=Directory("~/workspace/ChevalleyAdj/lib/data");
              if type(sys) in ["B","C","D","E","F","G"] and p = 2 or
                 type(sys) in ["E","F","G"] and p = 3 or
                 type(sys) = "E" and rank(sys) = 8 and p = 5 then
#              if type(sys) in ["B","C","D","F"] and p = 2 or
#                 type(sys) = "E" and rank(sys) in [7,8] and p = 2 or
#                 type(sys) in ["E","G"] and rank(sys) in [2,8] p = 3 or
                   file:=Concatenation("data",type(sys),String(rank(sys)),"char",String(p),source,".gi");
              Print(file,"\n");
#                   if source then file:=Concatenation("data",type(sys),String(rank(sys)),"char",String(p),"Mizuno.gi");
#                   else file:=Concatenation("data",type(sys),String(rank(sys)),"char",String(p),".gi"); fi;
              else file:=Concatenation("data",type(sys),String(rank(sys)),".gi"); fi;
              file:=Filename(dir,file);
              file:=ReadAsFunction(file);
              file:=file();

              if file[6]=[] then file[6]:=List([1..Length(file[1])],i->-1); fi;# if Orders not given then compute them
              reps:=List([1..Length(file[1])],i->Unipotent(sys,file[1][i],file[6][i]));
              if file[7]<>[] then
                  for rep in [1..Length(reps)] do
                      SetAduJordanBlocks(reps[rep],file[7][rep]);
                  od;
              fi;

              if p<>0 then
                  exps:=List(reps,i->LogInt(Order(i),p));
                  SetWittStructure(object,Witt(Maximum(exps),sys));
              fi;
              
              SetClasses(object,List([1..Length(file[1])],i->UnipotentClass(#witt_structures[exp[i]],
                  file[3][i],
                  reps[i],
                  file[2][i],
                  [file[4][i],file[5][i]])));
              
              SetName(object,Concatenation("<unipotent conjugacy classes ",type(sys),String(rank(sys)),
                                           " in characteristic ",String(Characteristic(sys)),">"));

              return object;
end);
