#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"chvadj.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"chvadj.test.init.gi")); Read(Filename(test_dir,"chvadj.test.gi"));
#
# Read(Filename(test_dir,"chvadj.test.gi"));
#

sys:=ChevalleyAdj("F",4,GF(2));
Print("Created ChevalleyAdj ",sys,"\n");
Print("\t[",IsChevalleyAdj(sys)=true,"] IsChevalleyAdj(sys)=true\n");