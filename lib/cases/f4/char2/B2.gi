#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char2,"_init_char2.gi")); Read(Filename(f4_dir_char2,"B2.gi"));
#
# Read(Filename(f4_dir_char2,"B2.gi"));
#


label:="B_2";
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
n:=[9];
aZ0:=ApplyRootsReflections(Z0,n);
#aZ0:=ConjugateByTorus(aZ0,4,-1); not needed in char 2

Print("\ta^Z0=",coefficients(aZ0),"\n");
Print("\tOne can also choose the representative of the class as component group representative\n");

#
# ------------------------------------------------------------------------
#

tmp:=handle12char2();
Print("\nComponent group is C2.\n");
Print("\ta^u= \n",coefficients(BorelRep(orb)),"\n");
Print("\ta^Z0= \n",coefficients(info[1]),"\n");
