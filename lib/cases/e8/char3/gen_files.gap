#
# usage: (!!!Achtung: This will overwrite all manual modifications)
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap"));
# Read(Filename(e8_dir_char3,"init_char3.gap")); Read(Filename(e8_dir_char3,"gen_files.gap"));
#

for l in labels do
    f:=Filename(e8_dir_char3,Concatenation(l,".gap"));
    #PrintTo(f,l);
    PrintTo(f,"#\n");
    AppendTo(f,"# usage:\n");
    AppendTo(f,"# Read(\"~/Workspace/Chevalley.gap/init.gap\"); Read(Filename(home_dir,\"load.gap\")); ");
    AppendTo(f,"Read(Filename(e8_dir_char3,\"init_char3.gap\")); Read(Filename(e8_dir_char3,\"");
    AppendTo(f,Concatenation(l,".gap"));
    AppendTo(f,"\"));\n");
    AppendTo(f,"#\n");
    AppendTo(f,"# Read(Filename(e8_dir_char3,\"init_char3.gap\")); Read(Filename(e8_dir_char3,\"");
    AppendTo(f,Concatenation(l,".gap"));
    AppendTo(f,"\"));\n\n");

    AppendTo(f,"label:=\"");
    AppendTo(f,l);
    AppendTo(f,"\";\n");

    AppendTo(f,"orb_nr:=Position(labels,label);\n\n");
    AppendTo(f,"orb:=AllClasses(orbs)[orb_nr];\n");
    AppendTo(f,"info:=handleClassShort(orb);\n\n");

    AppendTo(f,"Print(\"Consider the class \",Label(orb),\" in characteristic \",Characteristic(ring(sys)),\":\\n\");\n");
    AppendTo(f,"Print(\"\\tBorel representative \\n\\t\",coefficients(BorelRep(orb)),\"\\n\");\n");
    AppendTo(f,"Print(\"\\tconnected C_U(u) \\n\\t\",coefficients(info[1]),\"\\n\");\n");
    AppendTo(f,"Print(\"\\tconnected C_U(u) in Levi \\n\\t\",coefficients(info[2]),\"\\n\");\n");
    AppendTo(f,"Print(\"\\tconnected double C_U(u) \\n\\t\",coefficients(info[3]),\"\\n\");\n");
od;