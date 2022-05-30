# Minimal-spanning-tree-in-OCaml
Implementation of minimal spanning tree of connected graph in OCaml.

We define a weighted undirected graph by the list of its edges:

type graph = (int * float * int) list
Thus, [(0,1.5,1); (0,2.5,2)] represents the graph containing nodes 0, 1, 2 and edges with weight 1.5 and 2.5 between node 0 and nodes 1 and 2, respectively.

 mst 0 of 1 tests passing
Implement a function mst : graph -> graph that computes the minimum spanning tree for the given graph.
