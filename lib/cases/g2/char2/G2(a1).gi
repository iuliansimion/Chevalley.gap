#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(g2_dir_char2,"G2(a1).gi"));
#
# Read(Filename(g2_dir_char2,"G2(a1).gi"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gi"));


sys:=ChevalleyAdj("G",2,GF(2));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[2];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");

Z0:=info[3];

Print("Component group is S3.\n");
Print("On Z0:\n");
Print("\ta1=h_1 has weights ",TorusWeights([1],Z0),"\n");

a2Z0:=ApplyRootsReflections(Z0,[1]);
u:=Unipotent(chevalleyAdj(Z0),[[2,1]]);
a2Z0:=Conj(a2Z0,u);

Print("\ta2^Z0=",coefficients(a2Z0),"\n");