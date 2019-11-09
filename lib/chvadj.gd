
DeclareCategory("IsChevalleyAdj",IsObject);

# Constructor
DeclareOperation("ChevalleyAdj",[IsString,IsPosInt,IsRing]);
DeclareOperation("ChevalleyAdj",[IsChevalleyAdj,IsRing]);

# Primary Lie Attributes
DeclareAttribute("type",IsChevalleyAdj);
DeclareAttribute("rank",IsChevalleyAdj);

# Derived Lie Attributes
DeclareAttribute("lieAlgebra",IsChevalleyAdj);# ItsLieAlgebra/LieAlgebra?
DeclareAttribute("rootSystem",IsChevalleyAdj);# ItsRootSystem/RootSystem?
DeclareAttribute("positiveRoots",IsChevalleyAdj);
DeclareAttribute("allRoots",IsChevalleyAdj);# Roots?
DeclareAttribute("weylGroup",IsChevalleyAdj);

# Base Ring
DeclareAttribute("ring",IsChevalleyAdj);# BaseRing?
# Derived Attributes from Base Ring
DeclareAttribute("Characteristic",IsChevalleyAdj);

# Derived Arithmetic Attributes (see Carter)
DeclareAttribute("A",IsChevalleyAdj);# Extended Cartan matrix
DeclareAttribute("H",IsChevalleyAdj);# Eta's (see Carter)
DeclareAttribute("N",IsChevalleyAdj);# Lie Algebra structure constants
DeclareAttribute("M",IsChevalleyAdj);# M_rsi (see Carter)
DeclareAttribute("C",IsChevalleyAdj);# Algebraic group structure constants

# Operations
DeclareOperation("A_rs",[IsChevalleyAdj]);# Extended Cartan matrix #AOp,HOp,NOp,MOp?
DeclareOperation("Eta",[IsChevalleyAdj]);# Eta's (see Carter)
DeclareOperation("N_rs",[IsChevalleyAdj]);# Lie Algebra structure constants
DeclareOperation("M_rsi",[IsChevalleyAdj]);# M_rsi (see Carter)
DeclareOperation("C_ijrs",[IsChevalleyAdj]);# Group structure constants

DeclareOperation("PermutationSign",[IsChevalleyAdj,IsList,IsPosInt]);
DeclareOperation("PermutationSign",[IsChevalleyAdj,IsList,IsList]);
DeclareOperation("InversePermutationSign",[IsChevalleyAdj,IsList,IsPosInt]);
DeclareOperation("InversePermutationSign",[IsChevalleyAdj,IsList,IsList]);
