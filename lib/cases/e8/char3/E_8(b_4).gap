#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(e8_dir_char3,"init_char3.gap")); Read(Filename(e8_dir_char3,"E_8(b_4).gap"));
#
# Read(Filename(e8_dir_char3,"init_char3.gap")); Read(Filename(e8_dir_char3,"E_8(b_4).gap"));

label:="E_8(b_4)";
orb_nr:=Position(labels,label);

orb:=AllClasses(orbs)[orb_nr];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");