#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"witt.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"witt.test.init.gap")); Read(Filename(test_dir,"witt.test.gap"));
#
# Read(Filename(test_dir,"witt.test.gap"));
#

sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
w:=Witt(1,sys);
Print("Created Witt ",w,"\n");
Print("\t[",IsWitt(w)=true,"] IsWitt(w)=true\n");
