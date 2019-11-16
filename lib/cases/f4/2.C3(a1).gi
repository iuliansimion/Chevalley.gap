#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(f4_dir,"2.C3(a1).gap"));
#
# Read(Filename(f4_dir,"2.C3(a1).gap"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gap"));


sys:=ChevalleyAdj("F",4,GF(2));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[8];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tTODO\n");
#Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
#Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
#Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");