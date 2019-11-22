#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char3,"_init_char3.gi")); Read(Filename(f4_dir_char3,"F4(a3).gi"));
#
# Read(Filename(f4_dir_char3,"F4(a3).gi"));
#


label:="F_4(a_3)";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[6];
orb:=AllClasses(orbs)[orb_nr];
info:=infos[orb_nr];


#
# ------------------------------------------------------------------------
#

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected double C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");

Z0:=info[2];
# move Z0 to match the representative
Z0:=FromPositiveBorel(orb,Z0);
# adjust ordering of roots
Z0:=Unipotent(chevalleyAdj(Z0),coefficients(Z0),[1..Length(positiveRoots(sys))]);
Print("Z0 in position of Representative:\n\tZ0=",coefficients(Z0),"\n");

Print("Component group is S_4.\n");
Print("On Z0:\n");
n1:=[3];
a1Z0:=ApplyRootsReflections(Z0,n1);
u1:=Unipotent(chevalleyAdj(Z0),[[2,-1],[6,1]]);
a1Z0:=Conj(a1Z0,u1);
#a1Z0:=ConjugateByTori(a1Z0,[2,4],[-1,-1]);
# need to convert to gap numbering, see dataF4 file
a1Z0:=ConjugateByTori(a1Z0,[1,4],[-1,-1]);
Print("\ta^Z0=",coefficients(a1Z0),"\n");
Print("\th_3 has weights ",TorusWeights([3],a1Z0),"\n");

Print("\ta^Z0=",coefficients(a1Z0),"\n");


#
# ------------------------------------------------------------------------
#


tmp:=handle6char3();
Print("\nComponent group check:\n");
Print("\ta^u= \n",coefficients(tmp[1]),"\n");
Print("\tconnected center= \n",coefficients(tmp[2]),"\n");
