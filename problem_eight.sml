(* Problem Eight *)

fun update([], x) = [x]
  | update((yIn, yOut)::ys, (xIn, xOut)) = 
        if yIn = xIn then (xIn, xOut)::ys
        else (yIn, yOut)::update(ys, (xIn, xOut));

(* Test Cases *)
val FLR = [(1,1), (2,4), (3, 9), (4, 16), (5, 25)];        
update(FLR, (2,3));
update(FLR, (6,36));
