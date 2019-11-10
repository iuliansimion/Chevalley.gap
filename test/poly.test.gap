#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(home_dir,"load.gap")); Read(Filename(test_dir,"poly.test.gap"));
#
# Read("~/Workspace/Chevalley.gap/init.gap"); Read(Filename(test_dir,"poly.test.init.gap")); Read(Filename(test_dir,"poly.test.gap"));
#
# Read(Filename(test_dir,"poly.test.gap"));
#

avarnames:=List([1..7],i->Concatenation("a_{",String(i),"}"));
PR:=PolynomialRing(GF(5),avarnames);

Print("Created PolynomialRing ",PR,"\n");
Print("\t[",IsPolynomialRing(PR)=true,"] IsPolynomialRing(PR)=true\n");