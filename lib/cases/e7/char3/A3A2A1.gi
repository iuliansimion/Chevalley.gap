#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(e7_dir_char3,"A3A2A1.gi"));
#
# Read(Filename(e7_dir_char3,"init_char3.gi")); Read(Filename(e7_dir_char3,"A3A2A1.gi"));
#

label:="A_3A_2A_1";
orb_nr:=Position(labels,label);

orb:=AllClasses(orbs)[orb_nr];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tTODO\n");
#Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
#Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
#Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");