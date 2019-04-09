(*--------- Problem Five ----------*)
fun crossProduct ([], []) = []
  | crossProduct (xs, []) = []
  | crossProduct ([], ys) = []
  | crossProduct ([x], y::ys) = (x, y)::crossProduct([x], ys)
  | crossProduct (x::xs, ys) = crossProduct([x], ys)@crossProduct(xs, ys);
(* crossProduct([1,2], ["a","b"]); *)
