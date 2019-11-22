#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char2,"_init_char2.gi")); Read(Filename(f4_dir_char2,"sA2.gi"));
#
# Read(Filename(f4_dir_char2,"sA2.gi"));
#


label:="\\tilde A_2";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[14];
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
n:=[8,10];
aZ0:=ApplyRootsReflections(Z0,n);
u:=Unipotent(chevalleyAdj(Z0),[[3,-1]]);
aZ0:=Conj(aZ0,u);

Print("\ta^Z0=",coefficients(aZ0),"\n");

#
# ------------------------------------------------------------------------
#

tmp:=handle14char2();
Print("\nComponent group is C2.\n");
Print("\ta^u= \n",coefficients(BorelRep(orb)),"\n");
Print("\ta^Z0= \n",coefficients(info[1]),"\n");
