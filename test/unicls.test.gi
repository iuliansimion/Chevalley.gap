#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"unicls.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"unicls.test.init.gi")); Read(Filename(test_dir,"unicls.test.gi"));
#
# Read(Filename(test_dir,"unicls.test.gi"));
#

sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
orbs:=UnipotentClasses(sys,"");
Print("Created AlgebraicU ",orbs,"\n");
Print("\t[",IsUnipotentClasses(orbs)=true,"] IsUnipotentClasses(orbs)=true\n");


