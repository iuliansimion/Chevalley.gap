#
# usage:
# Read("~/Workspace/Chevalley.gap/init.gi"); Read(Filename(home_dir,"load.gi")); Read(Filename(f4_dir_char2,"A2.gi"));
#
# Read(Filename(f4_dir_char2,"A2.gi"));
#

ITER_POLY_WARN:=false;
Read(Filename(home_dir,"lib/io.gi"));
Read(Filename(home_dir,"handle.gi"));


sys:=ChevalleyAdj("F",4,GF(2));
alg:=AlgebraicU(sys);
orbs:=UnipotentClasses(alg,"");

orb:=AllClasses(orbs)[15];
info:=handleClassShort(orb);

Print("Consider the class ",Label(orb)," in characteristic ",Characteristic(ring(sys)),":\n");
Print("\tBorel representative \n\t",coefficients(BorelRep(orb)),"\n");
Print("\tconnected C_U(u) \n\t",coefficients(info[1]),"\n");
Print("\tconnected double C_U(u) in Levi \n\t",coefficients(info[2]),"\n");
Print("\tconnected double C_U(u) \n\t",coefficients(info[3]),"\n");

handle15char2:=function(orbs,info)
    local tmp1,tmp2,o,rep,cent,u;
    o:=AllClasses(orbs)[15];
    #info:=infos[15];
    
    rep:=Representative(o);
    #pr[7]=[0,0,1,1]-->[0,1,1,0]
    #pr[13]=[0,1,2,1]-->[1,1,2,0]
    tmp1:=ApplyRootsReflections(rep,[7,13]);
    u:=Unipotent(algebraicU(orbs),[[4,1]]);
    tmp1:=Conj(tmp1,u);
    
    cent:=FromPositiveBorel(o,info[2]);
    tmp2:=ApplyRootsReflections(cent,[7,13]);
    tmp2:=Conj(tmp2,u);

    return [tmp1,tmp2];
end;


Z0:=info[2];
# move Z0 to match the representative
Z0:=FromPositiveBorel(orb,Z0);

Print("Component group is C2.\n");
Print("On Z0:\n");
n:=[7,13];
## move n to match the Borel-representative
#n:=ToPositiveBorel(orb,[7,13]);
aZ0:=ApplyRootsReflections(Z0,n);
u:=Unipotent(chevalleyAdj(Z0),[[4,1]]);
aZ0:=Conj(aZ0,u);
#aZ0:=ConjugateByTorus(aZ0,2,-1); not needed in char 2

Print("\ta^Z0=",coefficients(aZ0),"\n");