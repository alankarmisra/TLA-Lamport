---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723114971478149000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723114971478150000 ==
(Len(AtoB2) < 4) /\ (Len(BtoA2) < 4)
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 19:02:51 WITA 2024 by alankar
