#
# usage: Read(Filename(home_dir,"main.gap"));
#

VERBOSE:=true;

sys:=ChevalleyAdj("F",4,GF(2));
alg:=AlgebraicU("F",4,GF(2));
#alg:=AlgebraicU(sys);