------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES big, small

TypeOK == /\ small \in 0..3
         /\ big \in 0..5
         

Init == /\ small = 0
        /\ big = 0
        

FillBig == /\ big' = 5
           /\ small' = small

FillSmall == /\ small' = 3
             /\ big' = big

EmptyBig == /\ big' = 0
            /\ small' = small

EmptySmall == /\ small' = 0
              /\ big' = big

Min(m,n) == IF m < n THEN m ELSE n

\*SmallToBig == /\ big' = Min(big + small, 5)
\*              /\ small' = small - (big' - big)
                                  

\*BigToSmall == /\ small' = Min(big + small, 3)
\*              /\ big' = big - (small' - small)
\*

SmallToBig == \/ /\ big + small <= 5
                 /\ small' = 0
                 /\ big' = big + small                 
              \/ /\ big + small > 5 
                 /\ small' = small - (5 - big)
                 /\ big' = 5
                                           
BigToSmall == \/ /\ big + small <= 3        
                 /\ big' = 0
                 /\ small' = big + small
              \/ /\ big + small > 3
                 /\ big' = big - (3 - small)
                 /\ small' = 3
                                                     

Next == \/ FillBig 
        \/ FillSmall 
        \/ EmptyBig 
        \/ EmptySmall
        \/ BigToSmall 
        \/ SmallToBig 
        
        
=============================================================================
\* Modification History
\* Last modified Sat Aug 03 16:57:47 WITA 2024 by alankar
\* Created Sat Aug 03 16:37:36 WITA 2024 by alankar
