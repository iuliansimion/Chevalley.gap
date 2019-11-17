#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(e8_dir_char5,"init_char5.gi")); Read(Filename(e8_dir_char5,"E_8(b_5).gi"));
#
# Read(Filename(e8_dir_char5,"init_char5.gi")); Read(Filename(e8_dir_char5,"E_8(b_5).gi"));

label:="E_8(b_5)";
orb_nr:=Position(labels,label);

orb:=AllClasses(orbs)[orb_nr];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");
