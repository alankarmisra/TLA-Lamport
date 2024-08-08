---- MODULE MC ----
EXTENDS AB, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723104490255115000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723104490255116000 ==
/\ Len(AtoB) =< 3
/\ Len(BtoA) =< 3
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1723104490255118000 ==
ABS!Spec
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 16:08:10 WITA 2024 by alankar
