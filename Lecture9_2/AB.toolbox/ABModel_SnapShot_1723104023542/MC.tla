---- MODULE MC ----
EXTENDS AB, TLC

\* CONSTRAINT definition @modelParameterContraint:0
constr_1723104020483103000 ==
/\ Len(AtoB) =< 3
/\ Len(BtoA) =< 3
----
=============================================================================
\* Modification History
\* Created Thu Aug 08 16:00:20 WITA 2024 by alankar
