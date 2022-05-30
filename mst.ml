type graph = (int * float * int) list;; 

let mst graph = let (@|)  list el= List.exists ((=) el) list in
  let rec accessible_edges nodes graph = List.fold_left (fun acc (nd1,cst,nd2) ->
      if (((nodes@|nd1)&&(nodes@|nd2))||(not(nodes@|nd1||nodes@|nd2))) then acc
      else (nd1,cst,nd2)::acc) [] graph in
  let getminedge list = List.fold_left (fun (a,b,c) (a1,b1,c1) -> if b1<b then (a1,b1,c1) 
                                         else (a,b,c)) (List.hd list) list in
  let (@:) (x,y) list = if list @| x then (y::list) else x::list in
  let rec aux known_nodes acc graph =
    let edges = accessible_edges known_nodes graph in
    if edges = [] then acc
    else let (a,b,c)=getminedge edges in 
      aux ((a,c)@:known_nodes) ((a,b,c)::acc) graph in
  let (random,_,_) = List.hd graph in aux [random] [] graph;;
