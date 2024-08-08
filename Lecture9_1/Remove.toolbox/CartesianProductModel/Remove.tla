------------------------------- MODULE Remove -------------------------------

EXTENDS Integers, Sequences

Remove(i, seq) == 
  [j \in 1..(Len(seq)-1) |-> IF j < i THEN seq[j] 
                                      ELSE seq[j+1]]

=============================================================================
\* Modification History
\* Last modified Thu Aug 08 15:08:52 WITA 2024 by alankar
\* Created Thu Aug 08 15:05:08 WITA 2024 by alankar
