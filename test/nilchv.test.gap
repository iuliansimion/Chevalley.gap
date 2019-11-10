#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"nilchv.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"nilchv.test.init.gap")); Read(Filename(test_dir,"nilchv.test.gap"));
#
# Read(Filename(test_dir,"nilchv.test.gap"));
#

sys:=NilpotentChv(ChevalleyAdj("F",4,GF(2)),[[1,1],[2,1]]);
Print("Created NilpotentChv ",sys,"\n");
Print("\t[",IsNilpotentChv(sys)=true,"] IsNilpotentChv(sys)=true\n");