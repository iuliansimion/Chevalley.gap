ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gi"));

F:=GF(3^2);
F_gen:=GeneratorsOfField(F)[1];
aaa:=F_gen^2;

sys:=ChevalleyAdj("F",4,F);
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");
infos:=List(AllClasses(orbs),o->handleClassShort(o));
labels:=List(AllClasses(orbs),x->Label(x));

APR:=ring(alg);
avars:=IndeterminatesOfPolynomialRing(APR);
vals:=ShallowCopy(avars);
pr:=positiveRoots(alg);
generic:=Unipotent(alg,List([1..Length(pr)],i->[i,avars[i]]));

Read(Filename(components_dir,"F4char3.gi"));