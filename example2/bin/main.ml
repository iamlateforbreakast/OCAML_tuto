(* main.ml *)

open Example2_lib
open Simulation

let usage_msg = "main -elf file.elf"

let elf_file = ref ""

let input_files = ref []

let output_file = ref ""

let anon_func filename = input_files := filename :: !input_files

let spec_list =
[("-elf", Arg.Set_string elf_file, "elf file");
 ("-o", Arg.Set_string output_file, "output file")]

let () = 
  let _ = print_endline "Hello, World!"in
  let _ = Arg.parse spec_list anon_func usage_msg in
  let s0 = Simulation.create() in
  let s_final = Simulation.execute 100.0 s0 in
  Simulation.print(s_final)
