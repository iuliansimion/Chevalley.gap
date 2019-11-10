#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"algU.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"algU.test.init.gap")); Read(Filename(test_dir,"algU.test.gap"));
#
# Read(Filename(test_dir,"algU.test.gap"));
#

sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
Print("Created AlgebraicU ",sys,"\n");
Print("\t[",IsAlgebraicU(sys)=true,"] IsAlgebraicU(sys)=true\n");