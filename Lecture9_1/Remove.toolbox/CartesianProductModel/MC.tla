---- MODULE MC ----
EXTENDS Remove, TLC

\* Constant expression definition @modelExpressionEval
const_expr_172310133392581000 == 
(1..3) \X {"a", "b"}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_172310133392581000>>)
----

=============================================================================
\* Modification History
\* Created Thu Aug 08 15:15:33 WITA 2024 by alankar
