#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"witt.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"witt.test.init.gi")); Read(Filename(test_dir,"witt.test.gi"));
#
# Read(Filename(test_dir,"witt.test.gi"));
#

sys:=AlgebraicU(ChevalleyAdj("F",4,GF(2)));
w:=Witt(1,sys);
Print("Created Witt ",w,"\n");
Print("\t[",IsWitt(w)=true,"] IsWitt(w)=true\n");
