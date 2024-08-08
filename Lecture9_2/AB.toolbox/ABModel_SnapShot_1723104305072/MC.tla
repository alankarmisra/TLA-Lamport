---- MODULE MC ----
EXTENDS AB, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723104301847108000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723104301847109000 ==
/\ Len(AtoB) =< 3
/\ Len(BtoA) =< 3
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 16:05:01 WITA 2024 by alankar
