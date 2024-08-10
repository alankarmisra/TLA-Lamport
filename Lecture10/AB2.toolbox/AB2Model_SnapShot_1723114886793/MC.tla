---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723114883573141000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723114883573142000 ==
(AtoB2 < 4) /\ (BtoA2 < 4)
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 19:01:23 WITA 2024 by alankar
