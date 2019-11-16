#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"psys.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"psys.test.init.gi")); Read(Filename(test_dir,"psys.test.gi"));
#
# Read(Filename(test_dir,"psys.test.gi"));
#

rsys:=RootSystem("F",4);
psys:=ParabolicSystem(rsys,[1,3]);




Print("Created ParabolicSystem ",psys,"\n");
Print("\t[",IsParabolicSystem(psys)=true,"] IsParabolicSystem(sys,[1,3])=true\n");

Print("\t[TODO] SupportRoots\n");
Print("\t[TODO] UnderlyingRootSystem\n");

radicalRootTest:=[ [ 0, 1, 0, 0 ], [ 0, 0, 0, 1 ], [ 0, 1, 0, 1 ], [ 0, 0, 1, 1 ], [ 1, 0, 1, 1 ], [ 0, 1, 1, 1 ], 
  [ 0, 0, 2, 1 ], [ 1, 1, 1, 1 ], [ 1, 0, 2, 1 ], [ 0, 1, 2, 1 ], [ 1, 1, 2, 1 ], [ 2, 0, 2, 1 ], 
  [ 0, 1, 2, 2 ], [ 1, 1, 2, 2 ], [ 2, 1, 2, 1 ], [ 1, 1, 3, 2 ], [ 2, 1, 2, 2 ], [ 2, 1, 3, 2 ], 
  [ 2, 1, 4, 2 ], [ 2, 1, 4, 3 ], [ 2, 2, 4, 3 ] ]=RadicalRoots(psys);
Print("\t[",radicalRootTest,"] testing RadicalRoots(sys)\n");

Print("\t[TODO] iRadicalRoots\n");
Print("\t[TODO] Height\n");
Print("\t[TODO] Levels\n");
Print("\t[TODO] iLevels\n");
Print("\t[TODO] 0Level\n");
Print("\t[TODO] Shapes\n");
Print("\t[TODO] LeviModules\n");
Print("\t[TODO] iLeviModules\n");
Print("\t[TODO] Ordering\n");

Print("\t[TODO] Shape\n");
Print("\t[TODO] Shape\n");
Print("\t[TODO] LeviModule\n");
Print("\t[TODO] LeviModule\n");
Print("\t[TODO] iLeviModule\n");
Print("\t[TODO] iLeviModule\n");

Print("\t[TODO] LeviModules\n");
Print("\t[TODO] iLeviModules\n");
Print("\t[TODO] RootHeight\n");
Print("\t[TODO] RootHeight\n");
Print("\t[TODO] Level\n");
Print("\t[TODO] InRadical\n");
