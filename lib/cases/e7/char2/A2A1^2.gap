#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(e7_dir_char2,"A2A1^2.gap"));
#
# Read(Filename(e7_dir_char2,"A2A1^2.gap"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gap"));


sys:=ChevalleyAdj("E",7,GF(2));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

labels:=List(AllClasses(orbs),x->Label(x));
label:="A_2A_1^2";
orb_nr:=Position(labels,label);

orb:=AllClasses(orbs)[orb_nr];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");