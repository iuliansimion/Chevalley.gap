#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char2,"_init_char2.gi")); Read(Filename(f4_dir_char2,"F4(a1).gi"));
#
# Read(Filename(f4_dir_char2,"F4(a1).gi"));
#


label:="F_4(a_1)";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[2];
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


#
# ------------------------------------------------------------------------
#

# NOT NEEDED in char 2 as the representative of the unipotent class is a representative of the component group
#tmp:=handle2char2();
#Print("\nComponent group is C2.\n");
#Print("\ta^u= \n",coefficients(BorelRep(orb)),"\n");
#Print("\ta^Z0= \n",coefficients(info[1]),"\n");
