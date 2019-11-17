#
# usage: (!!!Achtung: This will overwrite all manual modifications)
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi"));
# Read(Filename(e8_dir_char2,"init_char2.gi")); Read(Filename(e8_dir_char2,"gen_files.gi"));
#

for l in labels do
    f:=Filename(e8_dir_char2,Concatenation(l,".gi"));
    #PrintTo(f,l);
    PrintTo(f,"#\n");
    AppendTo(f,"# usage:\n");
    AppendTo(f,"# Read(\"~/Workspace/Chevalley.gap/init.gi\"); Read(Filename(home_dir,\"load.gi\")); ");
    AppendTo(f,"Read(Filename(e8_dir_char2,\"init_char2.gi\")); Read(Filename(e8_dir_char2,\"");
    AppendTo(f,Concatenation(l,".gi"));
    AppendTo(f,"\"));\n");
    AppendTo(f,"#\n");
    AppendTo(f,"# Read(Filename(e8_dir_char2,\"init_char2.gi\")); Read(Filename(e8_dir_char2,\"");
    AppendTo(f,Concatenation(l,".gi"));
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