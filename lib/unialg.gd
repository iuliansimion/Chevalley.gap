
# Group Arithmetics (see Carter)
DeclareOperation("Subword",[IsUnipotent,IsPosInt]);

# Over polynomial rings
DeclareOperation("Value",[IsUnipotent,IsList,IsList]);
DeclareOperation("Descend",[IsUnipotent]);
DeclareOperation("Descend",[IsUnipotent,IsChevalleyAdj]);
DeclareOperation("Ascend",[IsUnipotent,IsChevalleyAdj]);
DeclareOperation("Ascend",[IsUnipotent,IsAlgebraicU]);
DeclareOperation("Ascend",[IsUnipotent,IsPolynomialRing]);


DeclareOperation("TangentSpace",[IsUnipotent]);
DeclareOperation("UnipotentCentralizer",[IsUnipotent]);
DeclareOperation("UnipotentCentralizer2",[IsUnipotent]);
DeclareOperation("Zentrum",[IsUnipotent]);
DeclareOperation("ParameterPieces",[IsUnipotent]);
DeclareAttribute("Dimension",IsUnipotent);
#DeclareOperation("DimensionOp",IsUnipotent);

# Witt structure
DeclareOperation("GenericWittGroup",[IsUnipotent,IsWitt,IsList]);
DeclareOperation("SolveWittRoot",[IsUnipotent,IsWitt,IsPosInt,IsList,IsInt]);
DeclareOperation("WittGroup",[IsUnipotent,IsUnipotent,IsWitt]);
DeclareOperation("TestWittGroup",[IsUnipotent,IsWitt]);
DeclareOperation("WittDecomposition",[IsUnipotent,IsWitt]);
