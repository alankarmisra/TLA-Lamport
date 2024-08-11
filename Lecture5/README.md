# Some thoughts and observations

__Note:__ It's probably best to visit this README after you've been through the videos once. It uses concepts discussed in future lectures and attempts to clarify some things that remained unclear or needed further exploration at my end on review of the lectures.

## Expansion of rmState
The following syntax was a bit opaque to me at the onset:
```python
TCTypeOK == rmState \in [RM -> {"working", "prepared", "committed", "aborted"}]
```

First I simplified it to:
```python
States == {"working", "prepared", "committed", "aborted"}
TCTypeOK == rmState \in [RM -> States]
```

So when Leslie says:
> rmState is the set of all arrays indexed by RM

I imagine something like 
```python
[
  [
    {"r1": "working"},
    {"r2": "working"},
    {"r3": "working"}
  ],
  [
    {"r1": "prepared"},
    {"r2": "working"},
    {"r3": "working"}
  ],
  ...
]
```
The total number of states can be calculated as follows:
Each rm can be one of the 4 States. So for 3 resource managers, we have:

__4 * 4 * 4 = 64 states.__

For r resource managers we have __4^r__.  
For s states we have __s^r__ states.

Now I wanted to verify that my understanding was complementary to what TLA+ was doing. So I wrote the following spec to check if TLA+ generated the same number of states. Note that for this to work, you have to ensure that *r1, r2, r3* are not symmetrical model values. Otherwise TLA+ will generate far fewer states. 

```python
States == {"working", "prepared", "committed", "aborted"}
TCTypeOK == rmState \in [RM -> States]

Init == rmState = [r \in RM |-> "working"]

Next == \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "prepared"]
        \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "committed"]
        \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "aborted"]

Spec == Init /\ [][Next]_rmState /\ TCTypeOK
```

The above spec generates the following states a total of 64 states as expected which satisfies me and I can move on to exploring the TCommit spec further.
