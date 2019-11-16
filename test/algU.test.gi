#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"algU.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"algU.test.init.gi")); Read(Filename(test_dir,"algU.test.gi"));
#
# Read(Filename(test_dir,"algU.test.gi"));
#



sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
Print("Created AlgebraicU (1) ",sys,"\n");
Print("\t[",IsAlgebraicU(sys)=true,"] IsAlgebraicU(sys)=true\n");

sys:=AlgebraicU("F",4,GF(2));
Print("Created AlgebraicU (2) ",sys,"\n");
Print("\t[",IsAlgebraicU(sys)=true,"] IsAlgebraicU(sys)=true\n");