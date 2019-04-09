(*--------- Problem Six ----------*)
fun addToSets (x, []) = []
  | addToSets (x, y::ys) = (x::y)::addToSets(x, ys);
  
fun powerset [] = [[]]
  | powerset (x::xs) = 
        let
            val ps = powerset(xs)
        in
            ps @ addToSets(x, ps)
        end;
(* powerset([1,2]); *)
