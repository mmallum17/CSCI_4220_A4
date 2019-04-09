fun alternate ([], []) = []
  | alternate (x::xs, y::ys) = x::y::alternate(xs, ys);
alternate ([1,3,5],[2,4,6]);
