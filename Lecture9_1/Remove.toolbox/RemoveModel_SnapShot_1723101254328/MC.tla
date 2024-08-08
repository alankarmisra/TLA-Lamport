---- MODULE MC ----
EXTENDS Remove, TLC

\* Constant expression definition @modelExpressionEval
const_expr_172310125226477000 == 
Remove(3, <<1,2,3,4>>) ^ 
(1..3) \X {"a", "b"}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_172310125226477000>>)
----

=============================================================================
\* Modification History
\* Created Thu Aug 08 15:14:12 WITA 2024 by alankar
