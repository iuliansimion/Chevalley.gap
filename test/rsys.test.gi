#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"rsys.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"rsys.test.init.gi")); Read(Filename(test_dir,"rsys.test.gi"));
#
# Read(Filename(test_dir,"rsys.test.gi"));
#

sys:=RootSystem("F",4);
Print("Created RootSystem ",sys,"\n");
Print("\t[",IsRootSystem(sys)=true,"] IsRootSystem(sys)=true\n");

positiveRootTest:=[ [ 1, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 1 ], [ 1, 0, 1, 0 ], [ 0, 1, 0, 1 ], 
  [ 0, 0, 1, 1 ], [ 1, 0, 1, 1 ], [ 0, 1, 1, 1 ], [ 0, 0, 2, 1 ], [ 1, 1, 1, 1 ], [ 1, 0, 2, 1 ], 
  [ 0, 1, 2, 1 ], [ 1, 1, 2, 1 ], [ 2, 0, 2, 1 ], [ 0, 1, 2, 2 ], [ 1, 1, 2, 2 ], [ 2, 1, 2, 1 ], 
  [ 1, 1, 3, 2 ], [ 2, 1, 2, 2 ], [ 2, 1, 3, 2 ], [ 2, 1, 4, 2 ], [ 2, 1, 4, 3 ], [ 2, 2, 4, 3 ] ]=positiveRoots(sys);
Print("\t[",positiveRootTest,"] testing positiveRoots(sys)\n");

tmp:=StringPrint(Cocharacters(UnderlyingLieAlgebra(sys)));
tmp:=SubstitutionSublist(tmp,"\n  ","");
cocharacterTest:="[ v.49, v.50, v.51, v.52, v.49+v.51, v.50+v.52, v.51+(2)*v.52, v.49+v.51+(2)*v.52, (2)*v.50+v.51+\
(2)*v.52, v.51+v.52, v.49+(2)*v.50+v.51+(2)*v.52, v.49+(2)*v.51+(2)*v.52, v.50+v.51+v.52, v.49+(2)\
*v.50+(2)*v.51+(2)*v.52, v.49+v.51+v.52, v.50+v.51+(2)*v.52, v.49+(2)*v.50+(2)*v.51+(4)*v.52, v.49\
+v.50+v.51+v.52, v.49+(2)*v.50+(3)*v.51+(4)*v.52, v.49+v.50+v.51+(2)*v.52, (2)*v.49+(2)*v.50+(3)*v\
.51+(4)*v.52, v.49+v.50+(2)*v.51+(2)*v.52, v.49+v.50+(2)*v.51+(3)*v.52, v.49+(2)*v.50+(2)*v.51+(3)\
*v.52 ]"=tmp;
Print("\t[",positiveRootTest,"] testing Cocharacters(UnderlyingLieAlgebra(sys))\n");

Print("\t[TODO] testing TorusWeightOnRoot\n");
Print("\t[TODO] testing RootReflections\n");
Print("\t[TODO] testing PositiveTorusPermutation\n");
Print("\t[TODO] testing PermutationMatrix\n");
Print("\t[TODO] testing RootGraph\n");
Print("\t[TODO] testing LatexRootGraph\n");