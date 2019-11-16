#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"unialg.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"unialg.test.init.gi")); Read(Filename(test_dir,"unialg.test.gi"));
#
# Read(Filename(test_dir,"unialg.test.gi"));
#

sys:=Unipotent(ChevalleyAdj("F",4,GF(2)),[[1,1],[2,1]]);
Print("Created Unipotent ",sys,"\n");
Print("\t[",IsUnipotent(sys)=true,"] IsUnipotent(sys)=true\n");