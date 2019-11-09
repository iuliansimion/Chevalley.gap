
DeclareCategory("IsUnipotentClass",IsObject);

# Constructor
DeclareOperation("UnipotentClass",[IsString,# label,
                                   IsUnipotent,
                                   IsList,# torus as list of weights
                                   IsList]);# the two parabolics if any

# Defining Attributes
DeclareAttribute("algebraicU",IsUnipotentClass);

DeclareAttribute("Representative",IsUnipotentClass);
DeclareAttribute("Cocharacter",IsUnipotentClass);
DeclareAttribute("BorelPerm",IsUnipotentClass);
DeclareAttribute("BorelRep",IsUnipotentClass);
DeclareAttribute("Label",IsUnipotentClass);
DeclareAttribute("IsRichardson",IsUnipotentClass);
DeclareAttribute("SupportParabolic",IsUnipotentClass);
DeclareAttribute("DistinguishedParabolic",IsUnipotentClass);
DeclareAttribute("Order",IsUnipotentClass);

# Operations
DeclareOperation("ToPositiveBorel",[IsUnipotentClass,IsPosInt]);
DeclareOperation("ToPositiveBorel",[IsUnipotentClass,IsList]);
DeclareOperation("ToPositiveBorel",[IsUnipotentClass,IsUnipotent]);
DeclareOperation("FromPositiveBorel",[IsUnipotentClass,IsPosInt]);
DeclareOperation("FromPositiveBorel",[IsUnipotentClass,IsList]);
DeclareOperation("FromPositiveBorel",[IsUnipotentClass,IsUnipotent]);


#
# ---------- Overclass for classes ----------
#

DeclareCategory("IsUnipotentClasses",IsObject);

# Constructor
DeclareOperation("UnipotentClasses",[IsAlgebraicU,IsString]);

# Defining Attributes
DeclareAttribute("algebraicU",IsUnipotentClasses);
DeclareAttribute("AllClasses",IsUnipotentClasses);
DeclareAttribute("WittStructure",IsUnipotentClasses);


