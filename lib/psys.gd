
DeclareCategory("IsParabolicSystem",IsObject);

# Constructor
DeclareOperation("ParabolicSystem",[IsRootSystem,IsList]);

# Defining Attributes
DeclareAttribute("SupportRoots",IsParabolicSystem);
DeclareAttribute("UnderlyingRootSystem",IsParabolicSystem);

# Derived Attributes
DeclareAttribute("RadicalRoots",IsParabolicSystem);
DeclareAttribute("iRadicalRoots",IsParabolicSystem);
DeclareAttribute("Height",IsParabolicSystem);
DeclareAttribute("Levels",IsParabolicSystem);
DeclareAttribute("iLevels",IsParabolicSystem);
DeclareAttribute("0Level",IsParabolicSystem);#indices
DeclareAttribute("Shapes",IsParabolicSystem);
DeclareAttribute("LeviModules",IsParabolicSystem);
DeclareAttribute("iLeviModules",IsParabolicSystem);
DeclareAttribute("Ordering",IsParabolicSystem);

# Operations
DeclareOperation("Shape",[IsParabolicSystem,IsList]);
DeclareOperation("Shape",[IsParabolicSystem,IsPosInt]);
DeclareOperation("LeviModule",[IsParabolicSystem,IsList]);
DeclareOperation("LeviModule",[IsParabolicSystem,IsPosInt]);
DeclareOperation("iLeviModule",[IsParabolicSystem,IsList]);#indices
DeclareOperation("iLeviModule",[IsParabolicSystem,IsPosInt]);#indices
DeclareOperation("LeviModules",[IsParabolicSystem,IsPosInt]);
DeclareOperation("iLeviModules",[IsParabolicSystem,IsPosInt]);#indices
DeclareOperation("RootHeight",[IsParabolicSystem,IsList]);#=Sum(Shape)
DeclareOperation("RootHeight",[IsParabolicSystem,IsPosInt]);#=Sum(Shape)
DeclareOperation("Level",[IsParabolicSystem,IsPosInt]);
DeclareOperation("InRadical",[IsParabolicSystem,IsList]);




