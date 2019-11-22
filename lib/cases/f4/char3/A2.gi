#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char3,"_init_char3.gi")); Read(Filename(f4_dir_char3,"A2.gi"));
#
# Read(Filename(f4_dir_char3,"A2.gi"));
#


label:="A_2";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[12];
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

Print("Component group is C2.\n");
Print("On Z0:\n");
n:=[13,7];
## move n to match the Borel-representative
#n:=ToPositiveBorel(orb,[7,13]);
aZ0:=ApplyRootsReflections(Z0,n);
u:=Unipotent(chevalleyAdj(Z0),[[4,1]]);
aZ0:=Conj(aZ0,u);
# need to convert to gap numbering, see dataF4 file
#aZ0:=ConjugateByTori(aZ0,[4],[-1]);
#aZ0:=ConjugateByTori(aZ0,[2],[-1]);

Print("\ta^Z0=",coefficients(aZ0),"\n");


#
# ------------------------------------------------------------------------
#


tmp:=handle12char3();
Print("\nComponent group check:\n");
Print("\ta^u= \n",coefficients(tmp[1]),"\n");
Print("\tconnected center= \n",coefficients(tmp[2]),"\n");
