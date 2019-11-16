#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"_allTests.gi"));
#

LogTo(Filename(test_dir,"_allTests.log"));

#
# Polynomial stuff
#
Print("[Polynomial stuff]\n");
Read(Filename(test_dir,"poly.test.init.gi"));
Read(Filename(test_dir,"poly.test.gi"));

#
# Root system
#
Print("[Root system]\n");
Read(Filename(test_dir,"rsys.test.init.gi"));
Read(Filename(test_dir,"rsys.test.gi"));

#
# Parabolic system
#
Print("[Parabolic system]\n");
Read(Filename(test_dir,"psys.test.init.gi"));
Read(Filename(test_dir,"psys.test.gi"));

#
# Chevalley group stuff
#
Print("[Chevalley group stuff]\n");
Read(Filename(home_dir,"lib/chvadj.gd"));
Read(Filename(home_dir,"lib/chvadj.gi"));
Read(Filename(test_dir,"chvadj.test.gi"));

#
# Nilpotent elements
#
Print("[Nilpotent elements]\n");
Read(Filename(home_dir,"lib/nilchv.gd"));
Read(Filename(home_dir,"lib/nilchv.gi"));
Read(Filename(test_dir,"nilchv.test.gi"));

#
# Algebraic unipotent Sylow stuff
#
Print("[Algebraic unipotent Sylow stuff]\n");
Read(Filename(home_dir,"lib/algU.gd"));
Read(Filename(home_dir,"lib/algU.gi"));
Read(Filename(test_dir,"algU.test.gi"));

#
# Unipotent elements
#
Print("[Unipotent elements]\n");
Read(Filename(home_dir,"lib/unichv.gd"));
Read(Filename(home_dir,"lib/witt.gd"));
Read(Filename(home_dir,"lib/unialg.gd"));
#
Read(Filename(home_dir,"lib/unichv.gi"));
Read(Filename(test_dir,"unichv.test.gi"));

#
# Arithmetics modulo p
#
Print("[Arithmetics modulo p]\n");
Read(Filename(home_dir,"lib/unimod.gd"));
Read(Filename(home_dir,"lib/unimod.gi"));
#Read(Filename(test_dir,"unimod.test.gi"));

#
# Witt groups
#
Print("[Witt groups]\n");
Read(Filename(home_dir,"lib/witt.gi"));
Read(Filename(test_dir,"witt.test.gi"));

#
# Unipotent elements over polynomials
#
Print("[Unipotent elements over polynomials]\n");
Read(Filename(home_dir,"lib/unialg.gi"));
Read(Filename(test_dir,"unialg.test.gi"));