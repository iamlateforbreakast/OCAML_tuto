(* system.ml *)

open Obc
open Equipment
open Bus

module System = struct
   type {obc: Obc.t, 
         equipment: Equipment.t,
         bus: Bus.t}
   (* Constructor *)
   let create () = {obc=Obc.create();equipment= Equipment.create();bus=Bus.create()}

   (* Printer *)

   (* execute *)
   let execute t s = 
end