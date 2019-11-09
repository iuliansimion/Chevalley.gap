
DeclareCategory("IsWitt",IsObject);

# Constructor
DeclareOperation("Witt",[IsPosInt,IsAlgebraicU]);

# Defining Attributes
DeclareAttribute("Dimension",IsWitt);
DeclareAttribute("Characteristic",IsWitt);
DeclareAttribute("GenericSum",IsWitt);

DeclareAttribute("algebraicU",IsWitt);
DeclareAttribute("chevalleyAdjBPR",IsWitt);

DeclareAttribute("GenericLevelPolynomials",IsWitt);
DeclareOperation("GenericSumOp",[IsWitt]);
