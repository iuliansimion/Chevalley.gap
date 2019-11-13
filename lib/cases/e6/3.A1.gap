#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(e6_dir,"3.A1.gap"));
#
# Read(Filename(e6_dir,"3.A1.gap"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gap"));


sys:=ChevalleyAdj("E",6,GF(3));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[20];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");