fun posIntegerSquare x = x*x;

fun finiteListRepresentation (opFn, 0) = []
  | finiteListRepresentation (opFn, x) = (x, opFn x)::finiteListRepresentation(opFn, x - 1);

(* finiteListRepresentation(posIntegerSquare, 5); *)
