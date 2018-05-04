#lang rosette 
 
(require "../cosette.rkt" "../util.rkt" "../denotation.rkt" "../cosette.rkt" "../sql.rkt" "../evaluator.rkt" "../syntax.rkt" "../symmetry.rkt" "../test-util.rkt") 
  

(provide ros-instance)  

(current-bitwidth #f)

(define t0 (table-info "input" (list "c1" "c2" "c3")))
 
(define (q5 tables) 
(UNION-ALL (AS (JOIN (AS (SELECT (VALS (VAL-UNOP aggr-count (val-column-ref "t9.c1")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t9" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t1" (list "count_c1")]) (AS (SELECT (VALS (VAL-UNOP aggr-sum (val-column-ref "t8.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t8" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t2" (list "sum_c3")])) ["t3" (list "count_c1" "sum_c3")]) (SELECT (VALS "t4.count_c1" "t4.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS "t7.c1" (VAL-UNOP aggr-sum (val-column-ref "t7.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t7" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t7.c1" )
 HAVING (TRUE)) ["t5" (list "c1" "sum_c3")]) (AS (SELECT (VALS "t10.c1" (VAL-UNOP aggr-count (val-column-ref "t10.c1")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t10" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t10.c1" )
 HAVING (TRUE)) ["t6" (list "c1" "count_c1")])) ["t4" (list "c1" "sum_c3" "c11" "count_c1")])
 WHERE (AND (BINOP "t4.c1" = "t4.c11") (TRUE)))))
 
(define (q4 tables) 
(UNION-ALL (AS (JOIN (AS (SELECT (VALS (VAL-UNOP aggr-count (val-column-ref "t6.c1")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t6" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t1" (list "count_c1")]) (AS (SELECT (VALS (VAL-UNOP aggr-sum (val-column-ref "t5.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t5" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t2" (list "sum_c3")])) ["t3" (list "count_c1" "sum_c3")]) (SELECT (VALS "t4.count_c2" "t4.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS "t7.c1" (VAL-UNOP aggr-count (val-column-ref "t7.c2")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t7" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t7.c1" )
 HAVING (TRUE)) ["t10" (list "c1" "count_c2")]) (AS (SELECT (VALS "t8.c1" (VAL-UNOP aggr-sum (val-column-ref "t8.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t8" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t8.c1" )
 HAVING (TRUE)) ["t9" (list "c1" "sum_c3")])) ["t4" (list "c1" "count_c2" "c11" "sum_c3")])
 WHERE (AND (BINOP "t4.c1" = "t4.c11") (TRUE)))))
 
(define (q3 tables) 
(UNION-ALL (SELECT (VALS "t5.count_c3" "t5.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS (VAL-UNOP aggr-sum (val-column-ref "t3.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t3" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t1" (list "sum_c3")]) (AS (SELECT (VALS (VAL-UNOP aggr-count (val-column-ref "t4.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t4" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t2" (list "count_c3")])) ["t5" (list "sum_c3" "count_c3")])
 WHERE (TRUE)) (SELECT (VALS "t10.count_c2" "t10.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS "t6.c1" (VAL-UNOP aggr-sum (val-column-ref "t6.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t6" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t6.c1" )
 HAVING (TRUE)) ["t7" (list "c1" "sum_c3")]) (AS (SELECT (VALS "t9.c1" (VAL-UNOP aggr-count (val-column-ref "t9.c2")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t9" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t9.c1" )
 HAVING (TRUE)) ["t8" (list "c1" "count_c2")])) ["t10" (list "c1" "sum_c3" "c11" "count_c2")])
 WHERE (AND (BINOP "t10.c1" = "t10.c11") (TRUE)))))
 
(define (q2 tables) 
(UNION-ALL (SELECT (VALS "t9.count_c3" "t9.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS (VAL-UNOP aggr-sum (val-column-ref "t3.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t3" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t1" (list "sum_c3")]) (AS (SELECT (VALS (VAL-UNOP aggr-count (val-column-ref "t5.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t5" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t2" (list "count_c3")])) ["t9" (list "sum_c3" "count_c3")])
 WHERE (TRUE)) (SELECT (VALS "t4.count_c1" "t4.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS "t8.c1" (VAL-UNOP aggr-sum (val-column-ref "t8.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t8" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t8.c1" )
 HAVING (TRUE)) ["t6" (list "c1" "sum_c3")]) (AS (SELECT (VALS "t10.c1" (VAL-UNOP aggr-count (val-column-ref "t10.c1")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t10" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t10.c1" )
 HAVING (TRUE)) ["t7" (list "c1" "count_c1")])) ["t4" (list "c1" "sum_c3" "c11" "count_c1")])
 WHERE (AND (BINOP "t4.c1" = "t4.c11") (TRUE)))))
 
(define (q1 tables) 
(UNION-ALL (SELECT (VALS "t6.count_c3" "t6.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS (VAL-UNOP aggr-sum (val-column-ref "t3.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t3" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t1" (list "sum_c3")]) (AS (SELECT (VALS (VAL-UNOP aggr-count (val-column-ref "t4.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t4" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list )
 HAVING (TRUE)) ["t2" (list "count_c3")])) ["t6" (list "sum_c3" "count_c3")])
 WHERE (TRUE)) (SELECT (VALS "t5.count_c2" "t5.sum_c3" )
 FROM (AS (JOIN (AS (SELECT (VALS "t7.c1" (VAL-UNOP aggr-count (val-column-ref "t7.c2")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t7" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t7.c1" )
 HAVING (TRUE)) ["t10" (list "c1" "count_c2")]) (AS (SELECT (VALS "t8.c1" (VAL-UNOP aggr-sum (val-column-ref "t8.c3")) )
 FROM (AS (NAMED (list-ref tables 0)) ["t8" (list "c1" "c2" "c3")])
 WHERE (TRUE)
 GROUP-BY (list "t8.c1" )
 HAVING (TRUE)) ["t9" (list "c1" "sum_c3")])) ["t5" (list "c1" "count_c2" "c11" "sum_c3")])
 WHERE (AND (BINOP "t5.c1" = "t5.c11") (TRUE)))))

(define ros-instance (list q1 q5 (list t0)))