#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"unicls.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"unicls.test.init.gap")); Read(Filename(test_dir,"unicls.test.gap"));
#
# Read(Filename(test_dir,"unicls.test.gap"));
#

sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
orbs:=UnipotentClasses(sys,"");
Print("Created AlgebraicU ",orbs,"\n");
Print("\t[",IsUnipotentClasses(orbs)=true,"] IsUnipotentClasses(orbs)=true\n");


