#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(g2_dir_char3,"G2.gi"));
#
# Read(Filename(g2_dir_char3,"G2.gi"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gi"));


sys:=ChevalleyAdj("G",2,GF(3));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[1];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");