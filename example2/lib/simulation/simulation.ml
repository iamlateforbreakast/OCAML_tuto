(* simulation.ml *)

open System
open Environment

(* simulation structure *)
type state =
{
   time: float;
   quanta: float;
   env: Environment;
   sys: System;
}

(* Constructor *)
let create() = {time=0.0; quanta=0.01; sys=System.create(); env=Environment.create()}

(* Printer *)
let print(s:state) =
   let _ = Printf.printf "Simulation:\n" in
   let _ = Printf.printf ".time = %f\n" s.time in
   let _ = Printf.printf ".quanta = %f\n" s.quanta in
   let _ = System.print s.sys in
   let _ = Environment.print s.env
   
(* Execute function *)
let rec execute (t: float) (s: state) : state =
   let s1 = { time = s.t + s.quanta; 
              quanta = s.quanta;
              sys = System.execute t s.sys;
              env = Environment.execute t s.env } in
   if (t <= s1.time) s1 else execute (t - s1.quanta) s1

(* execute simulation for 100 s *)
let () =
   let s0 = create() in
   let s = execute 100 s0 in
   print s1
