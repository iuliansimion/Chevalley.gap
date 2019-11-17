ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gi"));


sys:=ChevalleyAdj("E",7,GF(3));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

labels:=List(AllClasses(orbs),x->Label(x));