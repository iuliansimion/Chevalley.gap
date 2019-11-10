#
#
#

Read("~/Workspace/Chevalley.gap/init.gap");

Read(Filename(home_dir,"lib/rsys.gd"));
Read(Filename(home_dir,"lib/rsys.gi"));

Read(Filename(home_dir,"lib/chvadj.gd"));
Read(Filename(home_dir,"lib/chvadj.gi"));

Read(Filename(home_dir,"lib/nilchv.gd"));
Read(Filename(home_dir,"lib/nilchv.gi"));

Read(Filename(home_dir,"lib/algU.gd"));
Read(Filename(home_dir,"lib/algU.gi"));

#
# UipotentChv needs SolveRelations
#
Read(Filename(home_dir,"lib/poly.gd"));
Read(Filename(home_dir,"lib/poly.gi"));

#
# UipotentChv needs Descend for Unipotent
# ... and Unipotent has to be declared before
#
# UniAlg needs Witt and UniMod
#
Read(Filename(home_dir,"lib/unichv.gd"));
Read(Filename(home_dir,"lib/witt.gd"));
Read(Filename(home_dir,"lib/unimod.gd"));
Read(Filename(home_dir,"lib/unialg.gd"));

Read(Filename(home_dir,"lib/unichv.gi"));
Read(Filename(home_dir,"lib/witt.gi"));
Read(Filename(home_dir,"lib/unimod.gi"));
Read(Filename(home_dir,"lib/unialg.gi"));

