

InstallMethod(RootSystem,
              "Root systems over the Integers",
              [IsString,IsPosInt],
              function(tip,rang)
              
              return RootSystem(SimpleLieAlgebra(tip,rang,Integers));
end);

InstallMethod(positiveRoots,
              "Positive roots in Chevalley basis order",
              [IsRootSystem],
              function(R)
              local cm;
              cm:=CartanMatrix(R);
              return List(PositiveRoots(R),i->SolutionMat(cm,i));
end);

InstallMethod(Cocharacters,
              "Cocharacters associated to positive roots",
              [IsLieAlgebra],
              function(L)
              local CB;

              CB:=ChevalleyBasis(L);

              return List([1..Length(CB[1])],i->CB[1][i]*CB[2][i]);
end);

InstallMethod(TorusWeightOnRoot,
              "The weight of a given torus on a given root",
              [IsRootSystem,IsList,IsPosInt],
              function(R,torus,root_index)
              local L,CB,B,h,e,roots,root;

              roots:=positiveRoots(R);
              roots:=Concatenation(roots,-roots);
              root:=roots[root_index];
              return Sum(List([1..Length(torus)],i->torus[i]*root[i]));
end);

InstallMethod(RootReflections,
              "Reflections in positive roots",
              [IsWeylGroup],
              function(W)
              local result,
              R,pr,pr_len,cm,roots,
              gens,unu,
              i,root,simple_ref,img,pos,
              check,rotire;

              R:=RootSystem(W);
              pr:=PositiveRoots(R);# these are the default GAP roots
              pr_len:=Length(pr);
              cm:=CartanMatrix(R);
              gens:=GeneratorsOfGroup(W);
              unu:=DiagonalMat(List([1..Length(gens)],i->1));
              result:=List([1..pr_len],i->unu);

              for i in [1..Length(gens)] do
                  result[i]:=gens[i];
              od;

              while Position(result,unu)<>fail do # this iteration is needed for G2
                  for root in [1..pr_len] do
                      for simple_ref  in Filtered([1..pr_len],i->result[i]<>unu) do
                          img:=pr[root]*result[simple_ref];
                          pos:=Position(pr,img);
                          if pos<>fail and
                             result[root]<>unu and
                             result[pos]=unu then
                             result[pos]:=result[simple_ref]^-1*result[root]*result[simple_ref];
                          fi;
                      od;
                  od;
              od;

              result:=List(result,i->cm*i*cm^-1);
              return result;
end);

InstallMethod(PositiveTorusPermutation,
              "The permutation that makes the torus have positive weights on simple roots",
              [IsRootSystem,IsList],
              function(R,t)
              local result,
              W,C,refs,
              next_root,i,lung,tmp;
              
              W:=WeylGroup(R);
              refs:=RootReflections(W);
              tmp:=List(t,i->i);

              next_root:=function(lista)
                  local i,lung;
                  lung:=Length(lista);
                  i:=1;
                  while i<=lung and lista[i]>=0 do i:=i+1; od;
                  return i;
              end;

              lung:=Length(tmp);
              i:=next_root(tmp);
              result:=[];
              while i<=lung do
                  Add(result,i);
                  tmp:=refs[i]*tmp;
                  i:=next_root(tmp);
              od;
              
              return result;
end);

InstallMethod(PermutationMatrix,
              "Matrix of permutation given by simple reflections",
              [IsWeylGroup,IsList],
              function(W,perm)
              local result,refs;

              refs:=RootReflections(W);

              if perm=[] then return DiagonalMat(List([1..Length(GeneratorsOfGroup(W))],i->1)); fi;
              return Product(List(Reversed(perm),i->refs[i]));
end);


InstallMethod(RootGraph,
              "root graph of level 1 roots",
              [IsRootSystem],
              function(R)
              local pr,rank,l0;

              rank:=Length(ChevalleyBasis(UnderlyingLieAlgebra(R))[3]);
              pr:=positiveRoots(R);
              l0:=pr{[1..rank]};
              
              return List(pr,root->List(Filtered(pr,i->i-root in l0),j->Position(pr,j)));
end);

InstallMethod(LatexRootGraph,
              "PGF&TikZ latex format of root graph",
              [IsString,IsRootSystem],
              function(fisier,R)
              local rank,type,pr,pr_len,
              l0,max_height,li,
              root_graph,coords,arrows,labels,alias,
              i,l;
              
              rank:=Length(ChevalleyBasis(UnderlyingLieAlgebra(R))[3]);
              type:=SemiSimpleType(UnderlyingLieAlgebra(R));
              pr:=positiveRoots(R);
              pr_len:=Length(pr);
              
              l0:=pr{[1..rank]};
              l0:=List(l0,i->Position(pr,i));
              max_height:=Sum(pr[pr_len]);
              li:=List([2..max_height],i->Filtered(pr,j->Sum(j)=i));
              li:=List(li,i->List(i,j->Position(pr,j)));

              Print(l0,"---",type,"\n");

              l:=Length(li[1]);
              coords:=List([1..Length(l0)],j->[l0[j],j,0]);
              coords:=Concatenation(coords,Concatenation(List([1..max_height-1],
                                                              i->List([1..Length(li[i])],j->[li[i][j],j,i]))));
              Print(coords,"\n----");
              Sort(coords,function(a,b) return a[1]<b[1]; end);
              coords:=List(coords,i->[i[2],i[3]]);

              Print(coords,"\n");

              root_graph:=RootGraph(R);
              arrows:=Concatenation(List([1..Length(root_graph)],i->List(root_graph[i],j->[i,j])));

              labels:=List(arrows,i->Position(pr,pr[i[2]]-pr[i[1]]));
              
              alias:=function(i)
                  if type = "F4" then return String(Concatenation(List(Permuted(pr[i],(4,2,1)),j->String(j)))); fi;
                  return String(Concatenation(List(pr[i],j->String(j))));
              end;

              PrintTo(fisier,"\\begin{tikzpicture}\n");

              # nodes:
              for i in [1..Length(coords)] do
#                 if proots[i][2]=1 then
#                     AppendTo(fisier,"\\node[draw,scale=0.5,color=red] (",i,") at (",
#                          2*coords[i][1],",",coords[i][2],") {",alias(i),": ",node_labels[i],"};\n");
#                 else
                 AppendTo(fisier,"\\node[draw,scale=0.5] (",i,") at (",
                          2*coords[i][1],",",coords[i][2],") {",i,": ",alias(i),"};\n");
#                 fi;
              od;

              # arrows
              for i in [1..Length(arrows)] do
#                  AppendTo(fisier,"\\draw[->,>=stealth] (",arrows[i][1],") -- (",arrows[i][2],
#                           ") node [right,near end,scale=0.5] {",labels[i],"};\n");              
                  AppendTo(fisier,"\\draw[->,>=stealth] (",arrows[i][1],") -- (",arrows[i][2],");\n");
              od;

              AppendTo(fisier,"\\end{tikzpicture}\n");
end);
