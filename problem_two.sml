(* Problem Two *)

fun remove (_, []) = []
  | remove (y, x::xs) = if y = x then xs
                        else x::remove(y,xs);

fun minus (xs, []) = xs
  | minus (xs, y::ys) = 
        let 
            val xsWithoutY = remove(y, xs)
        in
            minus(xsWithoutY, ys)
        end;

(* Test Cases *)
minus([1,1,1,2,2], [1,1,2,3]);
minus([1,1,2,3], [1,1,1,2,2]);

