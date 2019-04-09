fun member (x, []) = false
  | member (x, y::ys) = x = y orelse member(x, ys);

fun union (xs, []) = xs
  | union (xs, y::ys) = 
        if member(y, xs) then union(xs, ys)
        else union(y::xs, ys);

(* union([1,2,3], [1,2,3,4]); *)
