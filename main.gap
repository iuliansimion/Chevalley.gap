#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(home_dir,"main.gap"));
#
# Read(Filename(home_dir,"main.gap"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gap"));



alg:=AlgebraicU("G",2,GF(2));
#alg:=AlgebraicU(sys);

orbs:=UnipotentClasses(alg,"");

infos:=List(AllClasses(orbs),orb->handleClassShort(orb));