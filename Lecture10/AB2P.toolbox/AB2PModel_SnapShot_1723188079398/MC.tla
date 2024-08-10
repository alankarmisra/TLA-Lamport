---- MODULE MC ----
EXTENDS AB2P, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723188071296157000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723188071296158000 ==
(Len(AtoB2) < 4) /\ (Len(BtoA2) < 4)
----
=============================================================================
\* Modification History
\* Created Fri Aug 09 15:21:11 WITA 2024 by alankar
