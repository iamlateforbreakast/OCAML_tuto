(* simulation.ml *)

(* simulation structure *)
type state =
{
   time: float;
   quanta: float;
   env: environment;
   sys: system;
}

(* Constructor *)
let create() = {time=0; sys=system.create(); env=environment.create()}

(* Printer *)
let print() =
   let _ = Printf.printf "Simulation:\n" in
   let _ = Printf.printf ".time = %d\n" s.time in
   let _ = System.print() in
   let _ = Environment.print()
   
(* Execute function *)
let rec execute t s =
   let s1.t = s.t + s.quanta in
   match t with
   | t < s1.time -> s1
   | _ -> execute (t - s1.quanta) s1

(* execute simulation for 100 s *)
let () =
   let s0 = create() in
   let s = execute 100 s0
