---- MODULE MC ----
EXTENDS PaxosCommit, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Acceptor
const_172301610649961000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions RM
const_172301610649962000 == 
{r1, r2}
----

\* SYMMETRY definition
symm_172301610649963000 == 
Permutations(const_172301610649961000) \union Permutations(const_172301610649962000)
----

\* CONSTANT definitions @modelParameterConstants:0Ballot
const_172301610649964000 == 
{0, 1}
----

\* CONSTANT definitions @modelParameterConstants:2Majority
const_172301610649965000 == 
{{a1, a2}, {a1, a3}, {a2, a3}}
----

=============================================================================
\* Modification History
\* Created Wed Aug 07 15:35:06 WITA 2024 by alankar
