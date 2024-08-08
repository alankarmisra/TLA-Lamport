---- MODULE MC ----
EXTENDS Remove, TLC

\* Constant expression definition @modelExpressionEval
const_expr_172310127375979000 == 
Remove(3, <<1,2,3,4>>)

----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_172310127375979000>>)
----

=============================================================================
\* Modification History
\* Created Thu Aug 08 15:14:33 WITA 2024 by alankar
