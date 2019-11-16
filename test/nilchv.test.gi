#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"nilchv.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"nilchv.test.init.gi")); Read(Filename(test_dir,"nilchv.test.gi"));
#
# Read(Filename(test_dir,"nilchv.test.gi"));
#

sys:=NilpotentChv(ChevalleyAdj("F",4,GF(2)),[[1,1],[2,1]]);
Print("Created NilpotentChv ",sys,"\n");
Print("\t[",IsNilpotentChv(sys)=true,"] IsNilpotentChv(sys)=true\n");