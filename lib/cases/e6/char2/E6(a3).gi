#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(e6_dir_char2,"_init_char2.gi")); Read(Filename(e6_dir_char2,"E6(a3).gi"));
#
# Read(Filename(e6_dir_char2,"E6(a3).gi"));
#


label:="E_6(a_3)";
orb_nr:=Position(labels,label);
#orb:=AllClasses(orbs)[4];
orb:=AllClasses(orbs)[orb_nr];
info:=infos[orb_nr];


#
# ------------------------------------------------------------------------
#


Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");


#
# ------------------------------------------------------------------------
#


tmp:=handle4char2();
Print("\nComponent group check:\n");
Print("\ta^u= \n",coefficients(tmp[1]),"\n");
Print("\tconnected center= \n",coefficients(tmp[2]),"\n");