#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"unichv.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"unichv.test.init.gap")); Read(Filename(test_dir,"unichv.test.gap"));
#
# Read(Filename(test_dir,"unichv.test.gap"));
#

sys:=Unipotent(ChevalleyAdj("F",4,GF(2)),[[1,1],[2,1]]);
Print("Created Unipotent ",sys,"\n");
Print("\t[",IsUnipotent(sys)=true,"] IsUnipotent(sys)=true\n");