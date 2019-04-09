(* Problem Four *)

fun member (x, []) = false
  | member (x, y::ys) = x = y orelse member(x, ys);

fun twoSetIntersection ([], ys) = [] 
  | twoSetIntersection (x::xs, ys) = 
        if member(x, ys) then x::twoSetIntersection(xs, ys)
        else twoSetIntersection(xs, ys);

fun multiSetIntersection [] = []
  | multiSetIntersection [xs] = xs
  | multiSetIntersection(resultSet::nextSet::remainingSets) =
        let
            val nextIntersection = twoSetIntersection(resultSet, nextSet)
        in
            multiSetIntersection(nextIntersection::remainingSets)
        end;

(* Test Cases *)        
multiSetIntersection([[0,1,2,4], [0,1,4], [0,1], [0,3,4,6,7]]);
multiSetIntersection([[0,1,2,4], [0,1,4]]);
multiSetIntersection([[0,1,2,4]]);

