
DeclareCategory("IsUnipotent",IsObject);

# Constructor
DeclareOperation("Unipotent",[IsChevalleyAdj,IsList,IsList,IsInt]);
DeclareOperation("Unipotent",[IsChevalleyAdj,IsList,IsList]);
DeclareOperation("Unipotent",[IsChevalleyAdj,IsList,IsInt]);
DeclareOperation("Unipotent",[IsChevalleyAdj,IsList]);
DeclareOperation("Unipotent",[IsNilpotentChv]);

# Attributes
DeclareAttribute("chevalleyAdj",IsUnipotent);
DeclareAttribute("coefficients",IsUnipotent);
DeclareAttribute("Ordering",IsUnipotent);
#DeclareAttribute("Inverse",IsUnipotent);
DeclareAttribute("Order",IsUnipotent);
DeclareAttribute("AduJordanBlocks",IsUnipotent);

# Group Arithmetics (see Carter)
DeclareOperation("Canonic",[IsChevalleyAdj,IsList,IsList]);
DeclareOperation("InverseMutable",[IsUnipotent]);
DeclareOperation("OneMutable",[IsUnipotent]);
DeclareOperation("*",[IsUnipotent,IsUnipotent]);
DeclareOperation("OrderOp",[IsUnipotent]);
DeclareOperation("Comm",[IsUnipotent,IsUnipotent]);
DeclareOperation("Conj",[IsUnipotent,IsUnipotent]);
DeclareOperation("Subword",[IsUnipotent,IsList]);
DeclareOperation("InsertWord",[IsUnipotent,IsList]);

# Lie algebra action (see Carter)
DeclareOperation("*",[IsUnipotent,IsNilpotentChv]);
DeclareOperation("AduAlphat",[IsChevalleyAdj,IsPosInt,IsRingElement]);
DeclareOperation("Adu",[IsUnipotent]);
DeclareAttribute("AduJordanBlocksOp",IsUnipotent);
DeclareOperation("PositiveAdu",[IsUnipotent]);
DeclareOperation("PositiveFixedspace",[IsUnipotent]);
DeclareOperation("RestrictedAdu",[IsUnipotent,IsList]);
DeclareOperation("RestrictedFixedspace",[IsUnipotent,IsList]);

