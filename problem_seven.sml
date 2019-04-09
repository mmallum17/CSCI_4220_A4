(* Problem Seven *)

fun posIntegerSquare x = x*x;

fun finiteListRepresentation (opFn, 0) = []
  | finiteListRepresentation (opFn, x) = (x, opFn x)::finiteListRepresentation(opFn, x - 1);

(* Test Cases *)
finiteListRepresentation(posIntegerSquare, 5);
finiteListRepresentation(posIntegerSquare, 10);