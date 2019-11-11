#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(g2_dir,"2.G2.gap"));
#
# Read(Filename(g2_dir,"2.G2.gap"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gap"));


sys:=ChevalleyAdj("G",2,GF(2));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[1];
info:=handleClassShort(orb);

Print("Consider Class ",Label(orb),":\n");