#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"chvadj.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"chvadj.test.init.gap")); Read(Filename(test_dir,"chvadj.test.gap"));
#
# Read(Filename(test_dir,"chvadj.test.gap"));
#

sys:=ChevalleyAdj("F",4,GF(2));
Print("Created ChevalleyAdj ",sys,"\n");
Print("\t[",IsChevalleyAdj(sys)=true,"] IsChevalleyAdj(sys)=true\n");