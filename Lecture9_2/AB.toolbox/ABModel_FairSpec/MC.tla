---- MODULE MC ----
EXTENDS AB, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723105018684131000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723105018684132000 ==
/\ Len(AtoB) =< 3
/\ Len(BtoA) =< 3
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1723105018685134000 ==
ABS!FairSpec
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 16:16:58 WITA 2024 by alankar
