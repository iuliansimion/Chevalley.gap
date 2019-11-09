

DeclareOperation("RootSystem",[IsString,IsPosInt]);
DeclareAttribute("positiveRoots",IsRootSystem);
#DeclareOperation("positiveRoots",[IsRootSystem]);


DeclareOperation("Cocharacters",[IsLieAlgebra]);
DeclareOperation("TorusWeightOnRoot",[IsRootSystem,IsList,IsPosInt]);

DeclareOperation("RootReflections",[IsWeylGroup]);
DeclareOperation("PositiveTorusPermutation",[IsRootSystem,IsList]);
DeclareOperation("PermutationMatrix",[IsWeylGroup,IsList]);

DeclareOperation("RootGraph",[IsRootSystem]);
DeclareOperation("LatexRootGraph",[IsString,IsRootSystem]);




