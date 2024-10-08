#use "topfind";;
#require "base";;
open Base
open Stdlib

(* Single line comment *)

(* Create a exception with a parameter *)
exception sw_error of int

(* A structure *)
type my_struct = { count : int; step: int}

(** f_start *)
let rec f_start x =
  if x.count == 6 then { count = 0; step = 6}
  else 
    f_start { count = x.count + 1; step = 1}

let test = { count = 0; step = 1}

let () =
  let t = f_start test
  Printf.printf ("%d\n", t.count)
