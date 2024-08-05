---- MODULE MC ----
EXTENDS TwoPhase, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_172284525267450000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_172284525267451000 == 
Permutations(const_172284525267450000)
----

=============================================================================
\* Modification History
\* Created Mon Aug 05 16:07:32 WITA 2024 by alankar
