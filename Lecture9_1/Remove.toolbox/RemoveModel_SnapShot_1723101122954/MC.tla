---- MODULE MC ----
EXTENDS Remove, TLC

\* Constant expression definition @modelExpressionEval
const_expr_172310112090774000 == 
(1..3) \X {"a", "b"}
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_172310112090774000>>)
----

=============================================================================
\* Modification History
\* Created Thu Aug 08 15:12:00 WITA 2024 by alankar
