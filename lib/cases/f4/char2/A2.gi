#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char2,"_init_char2.gi")); Read(Filename(f4_dir_char2,"A2.gi"));
#
# Read(Filename(f4_dir_char2,"A2.gi"));
#

label:="A_2";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[15];
orb:=AllClasses(orbs)[orb_nr];
info:=infos[orb_nr];


#
# ------------------------------------------------------------------------
#


Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tINDEX: ",orb_nr,"\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected double C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");

#
# ------------------------------------------------------------------------
#

Z0:=info[2];
# move Z0 to match the representative
Z0:=FromPositiveBorel(orb,Z0);

Print("Component group is C2.\n");
Print("On Z0:\n");
n:=[7,13];
## move n to match the Borel-representative
#n:=ToPositiveBorel(orb,[7,13]);
aZ0:=ApplyRootsReflections(Z0,n);
u:=Unipotent(chevalleyAdj(Z0),[[4,1]]);
aZ0:=Conj(aZ0,u);
#aZ0:=ConjugateByTorus(aZ0,2,-1); not needed in char 2

Print("\ta^Z0=",coefficients(aZ0),"\n");

#
# ------------------------------------------------------------------------
#

tmp:=handle15char2();
Print("\nComponent group check:\n");
Print("\ta^u= \n",coefficients(tmp[1]),"\n");
Print("\tconnected center= \n",coefficients(tmp[2]),"\n");
