---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1723114689292137000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723114689292138000 ==
(AtoB2 < 4) /\ (BtoA2 < 4)
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 18:58:09 WITA 2024 by alankar
