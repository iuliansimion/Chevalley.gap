#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(e8_dir_char2,"init_char2.gi")); Read(Filename(e8_dir_char2,"A_6A_1.gi"));
#
# Read(Filename(e8_dir_char2,"init_char2.gi")); Read(Filename(e8_dir_char2,"A_6A_1.gi"));

label:="A_6A_1";
orb_nr:=Position(labels,label);

orb:=AllClasses(orbs)[orb_nr];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");
