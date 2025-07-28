(* main.ml *)

open Example2_lib

let () = 
  let _ = print_endline "Hello, World!"in
  let s0 = Simulation.create() in
  let s_final = Simulation.execute(100.0, s0) in
  Simulation.print(s_final)
