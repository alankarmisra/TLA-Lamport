--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"
        /\ i' \in 0..1000
        /\ pc' = "middle"
           
Add1 == /\ pc = "middle"
        /\ i' = i + 1
        /\ pc' = "done"

Next == Pick \/ Add1         

=============================================================================
\* Modification History
\* Last modified Sat Aug 03 14:51:20 WITA 2024 by alankar
\* Created Sat Aug 03 14:48:31 WITA 2024 by alankar
