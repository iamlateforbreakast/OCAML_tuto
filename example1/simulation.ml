(* simulation.ml *)

(* simulation structure *)
type state
{
   time: float
   env: environment
   sys: system
}

let initialise =

(* execute function *)
let execute t e s=
   t = t + quanta
   t = 0 -> e s
   t - quanta e s

(* execute simulation for 100 s *)
let ()=
   let s0 = system.create()
   let e0 = environment.create()
   let e s = execute 100 e0 s0