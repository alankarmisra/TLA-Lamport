# Some thoughts and observations

__Note:__ It's probably best to visit this README after you've been through the videos once. It uses concepts discussed in future lectures and attempts to clarify some things that remained unclear or needed further exploration at my end on a final review of the lectures.

## Enumeration of rmState
The following syntax was a bit opaque to me at the onset:
```tla
TCTypeOK == rmState \in [RM -> {"working", "prepared", "committed", "aborted"}]
```

Coming from a programming background, the following equivalent statement seems clearer to me:
```tla
TCTypeOK == \A r \in RM : rmState[r] \in {"working", "prepared", "committed", "aborted"}
```

To check for equivalence, I replaced the former with the latter in the spec. Having run the model checker, an equivalent number of states are generated, invariants are honoured and no errors are raised.

The total number of states can be calculated as follows:
Each rm can be one of the 4 States. So for 3 resource managers, we have:

__4 * 4 * 4 = 64 states.__

For r resource managers we have __4^r__.  
For s states we have __s^r__ states.

Now I wanted to verify that my understanding was complementary to what TLA+ was doing. So I GPT'ed the following spec to check if TLA+ generated the same number of states. Note that for this to work, you have to ensure that *r1, r2, r3* are not symmetrical model values. Otherwise TLA+ will generate far fewer states. 

```tla
TCTypeOK == \A r \in RM : rmState[r] \in {"working", "prepared", "committed", "aborted"}

Init == rmState = [r \in RM |-> "working"]

Next == \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "prepared"]
        \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "committed"]
        \/ \E r \in RM: rmState' = [rmState EXCEPT ![r] = "aborted"]

Spec == Init /\ [][Next]_rmState
```

The above spec generates the following states a total of 64 states as expected which satisfies me and I can move on to exploring the TCommit spec further.


## Enumeration of TCInit
```tla
TCInit == rmState = [r \in RM |-> "working"]
```

The set *[r \in RM |-> "working"]* enumerates to:
```python
rmState = [
  {"r1" : "working"},
  {"r2" : "working"},
  {"r3" : "working"}
]
```

Which then jives with Leslie's observation that
```tla
[r \in RM |-> "working"][rm] = "working"
# for all rm in RM
```

The syntax is
```tla
[variable \in set |-> expression]
```

You could write this in python as
```python
RM = ["r1", "r2", "r3"]
rmState = {
    RM[0]: "working", # "r1"
    RM[1]: "working", # "r2"
    RM[2]: "working" # "r3"
}
for rm in RM:
  assert(rmState[rm] == "working")
```
