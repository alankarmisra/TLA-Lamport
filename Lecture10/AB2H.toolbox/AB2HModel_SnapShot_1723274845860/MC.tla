---- MODULE MC ----
EXTENDS AB2H, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723274839939163000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723274839939164000 ==
Len(AtoB2) <= 3 /\ Len(BtoA2) <=3
----
=============================================================================
\* Modification History
\* Created Sat Aug 10 15:27:19 WITA 2024 by alankar
