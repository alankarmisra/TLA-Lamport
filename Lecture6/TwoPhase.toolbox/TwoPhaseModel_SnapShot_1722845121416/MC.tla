---- MODULE MC ----
EXTENDS TwoPhase, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_172284511834443000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_172284511834444000 == 
Permutations(const_172284511834443000)
----

=============================================================================
\* Modification History
\* Created Mon Aug 05 16:05:18 WITA 2024 by alankar
