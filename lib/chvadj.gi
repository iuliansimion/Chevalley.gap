
InstallMethod(ChevalleyAdj,
              "Simple algebraic of adjoint type",
              [IsString,IsPosInt,IsRing],
              function(Type,Rank,Ring)
              local object,test;
              object:=Objectify(NewType(NewFamily("ChevalleyAdjFamily"),
                                        IsAttributeStoringRep and
                                        IsChevalleyAdj),
                                rec());

              Settype(object,Type);
              Setrank(object,Rank);

              SetlieAlgebra(object,SimpleLieAlgebra(Type,Rank,Ring));
              SetrootSystem(object,RootSystem(SimpleLieAlgebra(Type,Rank,Integers)));
              SetpositiveRoots(object,positiveRoots(rootSystem(object)));
              SetallRoots(object,Concatenation(
                  positiveRoots(rootSystem(object)),
                  -positiveRoots(rootSystem(object))));
              SetweylGroup(object,WeylGroup(rootSystem(object)));


              Setring(object,Ring);

              SetCharacteristic(object,Characteristic(Ring));


              SetA(object,A_rs(object));
              SetN(object,N_rs(object));
              SetH(object,Eta(object));
              SetM(object,M_rsi(object));
              SetC(object,C_ijrs(object));

              SetName(object,Concatenation("<simple adjoint ",Type,String(Rank),
                                           " in characteristic ",String(Characteristic(Ring)),">"));
              
              return object;
end);

InstallMethod(ChevalleyAdj,
              "Simple algebraic of adjoint type",
              [IsChevalleyAdj,IsRing],
              function(sys,Ring)
              local object;
              object:=Objectify(NewType(NewFamily("ChevalleyAdjFamily"),
                                        IsAttributeStoringRep and
                                        IsChevalleyAdj),
                                rec());

              Settype(object,type(sys));
              Setrank(object,rank(sys));

              SetlieAlgebra(object,SimpleLieAlgebra(type(object),rank(object),Ring));
              SetrootSystem(object,rootSystem(sys));
              SetpositiveRoots(object,positiveRoots(sys));
              SetallRoots(object,allRoots(sys));
              SetweylGroup(object,weylGroup(sys));

              Setring(object,Ring);

              SetCharacteristic(object,Characteristic(Ring));

              SetA(object,A(sys));
              SetH(object,H(sys));
              SetN(object,N(sys));
              SetM(object,M(sys));
              SetC(object,C(sys));

              SetName(object,Concatenation("<simple adjoint ",type(object),String(rank(object)),
                                           " in characteristic ",String(Characteristic(object)),">"));
              
              return object;
end);

InstallMethod(A_rs,
              "Extended Cartan Matrix",
              [IsChevalleyAdj],
              function(sys)
              local A,
              root_len,L,B,cochars,
              r,s;
              
              root_len:=2*Length(positiveRoots(sys));
              L:=UnderlyingLieAlgebra(rootSystem(sys));
              cochars:=Cocharacters(L);
              cochars:=Concatenation(cochars,-cochars);
              B:=Basis(L);

              A:=NullMat(root_len,root_len,Integers);
              for r in [1..root_len] do
                  for s in [1..root_len] do
                      A[r][s]:=Sum(Coefficients(Basis(L),cochars[r]*B[s]));
                  od;
              od;

              return A;
end);

eta:=function(r,s,roots,NN)
    local p,q,sus,jos;
    
    p:=0;
    while Position(roots,-(p+1)*roots[r]+roots[s])<>fail do p:=p+1; od;
    q:=0;
    while Position(roots,(q+1)*roots[r]+roots[s])<>fail do q:=q+1; od;

    sus:=List([1..p],i->SignInt(NN[r][Position(roots,(i-1-p)*roots[r]+roots[s])]));
    if sus=[] then sus:=1; else sus:=Product(sus); fi;
    if sus=0 then sus:=1; fi;
    
    jos:=List([1..q],i->SignInt(NN[r][Position(roots,(i-1-p)*roots[r]+roots[s])]));
    if jos=[] then jos:=1; else jos:=Product(jos); fi;
    if jos=0 then jos:=1; fi;

    return (-1)^p*sus/jos;
end;

InstallMethod(Eta,
              "The matrix \eta with the signs (see Carter page 95)",
              [IsChevalleyAdj],
              function(sys)
              local H,
              NN,roots,roots_len,r,s;

              roots:=allRoots(sys);
              roots_len:=Length(roots);

              NN:=N(sys);
              
              H:=NullMat(roots_len,roots_len,Integers);
#              for r in [1..roots_len/2] do
#                  H[r][r]:=-1;
#                  H[r][Position(roots,-roots[r])]:=-1;
#                  H[Position(roots,-roots[r])][r]:=-1;
#                  H[Position(roots,-roots[r])][Position(roots,-roots[r])]:=-1;
#              od;

              for r in [1..roots_len] do
                  for s in [1..roots_len] do
                      if r<>s and r<>Position(roots,-roots[s]) then H[r][s]:=eta(r,s,roots,NN);
                      else H[r][s]:=-1; fi;
                  od;
              od;

              return H;
end);

#InstallMethod(Eta,
#              "The matrix \eta with the signs (see Carter page 95)",
#              [IsChevalleyAdj],
#              function(sys)
#              local H,
#              A_rs,pr,roots,pr_len,root_refs,
#              r,s,
#              wr_on_s,flag;
#
#              A_rs:=A(sys);
#              pr:=positiveRoots(sys);
#              roots:=allRoots(sys);
#              pr_len:=Length(pr);
#              root_refs:=RootReflections(weylGroup(sys));
#
#              H:=NullMat(2*pr_len,2*pr_len,Integers);
#              for r in [1..pr_len] do
#                  H[r][r]:=-1;
#                  H[r][Position(roots,-roots[r])]:=-1;
#                  H[Position(roots,-roots[r])][r]:=-1;
#                  H[Position(roots,-roots[r])][Position(roots,-roots[r])]:=-1;
#              od;
#
#              for s in [1..2*pr_len] do
#                  flag:=false;
#                  for r in [1..2*pr_len] do
#                      wr_on_s:=Position(roots,roots[s]*root_refs[((r-1) mod pr_len) +1]);
#                      if H[r][s]<>0 and H[r][wr_on_s]=0 then
#                          H[r][wr_on_s]:=H[r][s]*(-1)^A_rs[r][s];
#                          H[r][Position(roots,-roots[wr_on_s])]:=H[r][wr_on_s];
#                          flag:=true;
#                      elif H[r][s]=0 and H[r][wr_on_s]<>0 then
#                          H[r][s]:=H[r][wr_on_s]*(-1)^A_rs[r][s];
#                          H[r][Position(roots,-roots[s])]:=H[r][s];
#                          flag:=true;
#                      fi;
#                  od;
#                  if not flag then
#                      for r in [1..2*pr_len] do
#                          wr_on_s:=Position(roots,roots[s]*root_refs[((r-1) mod pr_len)+1]);
#                          if H[r][s]=0 then
#                              H[r][s]:=1;
#                              H[r][Position(roots,-roots[s])]:=1;
#                              H[r][wr_on_s]:=(-1)^A_rs[r][s];
#                              H[r][Position(roots,-roots[wr_on_s])]:=H[r][wr_on_s];
#                          fi;
#                      od;
#                  fi;
#              od;
#
#              return H;
#end);

InstallMethod(N_rs,
              "Lie Algebra structure constants (see Carter page 52)",
              [IsChevalleyAdj],
              function(sys)
              local N,
              L,B,pr_len,
              r,s;
              
              L:=UnderlyingLieAlgebra(rootSystem(sys));
              B:=Basis(L);
              pr_len:=Length(positiveRoots(sys));

              N:=NullMat(2*pr_len,2*pr_len,Integers);
              for r in [1..pr_len*2] do
                  for s in [1..pr_len*2] do
                      if r=s+pr_len or s=r+pr_len then N[r][s]:=fail;
                      else N[r][s]:=Sum(Coefficients(B,B[r]*B[s])); fi;
                  od;
              od;

              return N;
end);

InstallMethod(M_rsi,
              "The M_rsi (see Certer page 61)",
              [IsChevalleyAdj],
              function(sys)
              local M,
              pr,pr_len,roots,n,
              i,j,k,tmp,poz;
              
              pr:=positiveRoots(sys);
              roots:=allRoots(sys);
              pr_len:=Length(pr);
              n:=N(sys);
              
              M:=List([1..pr_len*2],i->List([1..pr_len*2],j->[]));
              for i in [1..pr_len*2] do
                  for j in [1..pr_len*2] do
                      if i=j+pr_len or j=i+pr_len then M[i][j]:=fail;
                      else
                          tmp:=[n[i][j]];
                          for k in [2..4] do
                              poz:=Position(roots,(k-1)*roots[i]+roots[j]);
                              if poz<>fail then Add(tmp,n[i][poz]); fi;        
                          od;
                          M[i][j]:=List([1..Length(tmp)],i->1/Factorial(i)*Product(tmp{[1..i]}));
                          M[i][j]:=Filtered(M[i][j],k->k<>0);
                      fi;
                  od;
              od;

              return M;
end);


InstallMethod(C_ijrs,
              "Algebraic group structure constants (see Carter page 76)",
              [IsChevalleyAdj],
              function(sys)
              local C,
              pr,pr_len,roots,m,
              r,s,poz;
              
              pr:=positiveRoots(sys);
              roots:=allRoots(sys);
              pr_len:=Length(pr);
              m:=M(sys);
              
              C:=List([1..pr_len*2],i->List([1..pr_len*2],j->[]));
              for r in [1..pr_len*2] do
                  for s in [1..pr_len*2] do
                    if r=s+pr_len or s=r+pr_len then C[r][s]:=fail;
                    else
                      #C_i1rs=M_rsi
                      Add(C[r][s],List([1..Length(m[r][s])],i->[i,1,m[r][s][i]]));
                      #C_1jrs=(-1)^j*M_srj
                      Add(C[r][s],List([2..Length(m[s][r])],j->[1,j,m[s][r][j]*(-1)^j]));#(1,1) apare mai sus
                      #C_32rs=1/3*M_(r+s)r2
                      poz:=Position(roots,3*roots[r]+2*roots[s]);
                      if poz <> fail then
                          poz:=Position(roots,roots[r]+roots[s]);
                          Add(C[r][s],[[3,2,(1/3)*m[poz][r][2]]]);
                      fi;
                      #C_23rs=1/3*M_(r+s)r2
                      poz:=Position(roots,2*roots[r]+3*roots[s]);
                      if poz <> fail then
                          poz:=Position(roots,roots[r]+roots[s]);
                          Add(C[r][s],[[2,3,-(2/3)*m[poz][s][2]]]);
                      fi;
                      C[r][s]:=Concatenation(C[r][s]);
                      Sort(C[r][s],function(a,b) return a[1]+a[2]<b[1]+b[2]; end);
                    fi;  
                  od;
              od;

              return C;
end);

InstallMethod(PermutationSign,
              "Uses the \eta's to give the sign of the permutation on an e_alpha",
              [IsChevalleyAdj,IsList,IsPosInt],
              function(sys,perm,root_index)
              local result,
              eta,ref_mats,roots,
              i;
              
              eta:=H(sys);
              ref_mats:=RootReflections(weylGroup(sys));
              roots:=allRoots(sys);
              
              result:=1;
              for i in Reversed(perm) do  # !!! ATENTIE AICI .. conteaza daca e actiune stanga sau dreapta
              #for i in perm do
                  result:=result*eta[i][root_index];
                  root_index:=Position(roots,roots[root_index]*ref_mats[i]);
#                  root_index:=Position(roots,ref_mats[i]*roots[root_index]);
              od;

              return result;
end);

InstallMethod(PermutationSign,
              "Uses the \eta's to give the sign of the permutation on an e_alpha",
              [IsChevalleyAdj,IsList,IsList],
              function(sys,perm,root)
              return PermutationSign(sys,perm,Position(positiveRoots(sys),root));
end);

InstallMethod(InversePermutationSign,
              "Uses the \eta's to give the sign of the permutation on an e_alpha",
              [IsChevalleyAdj,IsList,IsPosInt],
              function(sys,perm,root_index)
              local result,
              eta,ref_mats,roots,
              i;
              
              eta:=H(sys);
              ref_mats:=RootReflections(weylGroup(sys));
              roots:=allRoots(sys);
              
              result:=1;
              #for i in Reversed(perm) do  # !!! ATENTIE AICI .. conteaza daca e actiune stanga sau dreapta
              for i in perm do
                  #result:=result*eta[i][root_index];
                  root_index:=Position(roots,roots[root_index]*ref_mats[i]);
                  result:=result*eta[i][root_index];
#                  root_index:=Position(roots,ref_mats[i]*roots[root_index]);
              od;

              return result;
end);

InstallMethod(InversePermutationSign,
              "Uses the \eta's to give the sign of the permutation on an e_alpha",
              [IsChevalleyAdj,IsList,IsList],
              function(sys,perm,root)
              return InversePermutationSign(sys,perm,Position(positiveRoots(sys),root));
end);

