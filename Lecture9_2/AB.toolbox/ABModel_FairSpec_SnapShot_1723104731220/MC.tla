---- MODULE MC ----
EXTENDS AB, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723104727161123000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723104727161124000 ==
/\ Len(AtoB) =< 3
/\ Len(BtoA) =< 3
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1723104727161126000 ==
ABS!FairSpec
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 16:12:07 WITA 2024 by alankar
