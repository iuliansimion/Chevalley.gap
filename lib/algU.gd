
DeclareCategory("IsAlgebraicU",IsObject);

# Constructor
DeclareOperation("AlgebraicU",[IsString,IsPosInt,IsRing]);
DeclareOperation("AlgebraicU",[IsChevalleyAdj]);

DeclareAttribute("chevalleyAdj",IsAlgebraicU);
DeclareAttribute("BaseRing",IsAlgebraicU);
