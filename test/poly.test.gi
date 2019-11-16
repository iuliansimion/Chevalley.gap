#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(test_dir,"poly.test.gi"));
#
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(test_dir,"poly.test.init.gi")); Read(Filename(test_dir,"poly.test.gi"));
#
# Read(Filename(test_dir,"poly.test.gi"));
#

avarnames:=List([1..7],i->Concatenation("a_{",String(i),"}"));
PR:=PolynomialRing(GF(5),avarnames);

Print("Created PolynomialRing ",PR,"\n");
Print("\t[",IsPolynomialRing(PR)=true,"] IsPolynomialRing(PR)=true\n");