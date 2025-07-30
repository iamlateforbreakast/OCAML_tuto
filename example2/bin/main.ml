(* main.ml *)

open Example2_lib
open Simulation

let usage_msg = "main -elf file.elf"

let elf_file = ref []

let output_file = ""

let spec_list =
[("-elf", Arg.set elf_file, "elf file");
 ("-o", Arg.set_string output_file, "output file")]

let () = 
  let _ = print_endline "Hello, World!"in
  let s0 = Simulation.create() in
  let s_final = Simulation.execute 100.0 s0 in
  Simulation.print(s_final)
