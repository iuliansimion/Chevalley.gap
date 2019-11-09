
DeclareCategory("IsNilpotentChv",IsObject);

# Constructor
DeclareOperation("NilpotentChv",[IsChevalleyAdj,IsList]);

# Attributes
DeclareAttribute("chevalleyAdj",IsNilpotentChv);
DeclareAttribute("coefficients",IsNilpotentChv);
DeclareAttribute("LieAlgebraElement",IsNilpotentChv);
DeclareAttribute("LieAlgebraCoeffs",IsNilpotentChv);

# Arithmetics
DeclareOperation("*",[IsRingElement,IsNilpotentChv]);
DeclareOperation("+",[IsNilpotentChv,IsNilpotentChv]);
DeclareOperation("AdditiveInverseMutable",[IsNilpotentChv]);
DeclareOperation("ZeroMutable",[IsNilpotentChv]);

# Over polynomial rings
DeclareOperation("Ascend",[IsNilpotentChv,IsPolynomialRing]);
DeclareOperation("Ascend",[IsNilpotentChv,IsChevalleyAdj]);
