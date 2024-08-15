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
const_172372099355446000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions RM
const_172372099355447000 == 
{r1, r2}
----

\* SYMMETRY definition
symm_172372099355448000 == 
Permutations(const_172372099355446000) \union Permutations(const_172372099355447000)
----

\* CONSTANT definitions @modelParameterConstants:0Ballot
const_172372099355449000 == 
{0, 1}
----

\* CONSTANT definitions @modelParameterConstants:2Majority
const_172372099355450000 == 
{{a1, a2}, {a1, a3}, {a2, a3}}
----

=============================================================================
\* Modification History
\* Created Thu Aug 15 18:23:13 ICT 2024 by alankar
