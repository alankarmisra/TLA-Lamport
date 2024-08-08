---- MODULE MC ----
EXTENDS ABSpec, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Data
const_172310268733097000 == 
{a, b, c}
----

\* PROPERTY definition @modelCorrectnessProperties:0
prop_1723102687338100000 ==
\A v \in Data \X {0, 1} : (AVar = v) ~> (BVar = v)
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 15:38:07 WITA 2024 by alankar
