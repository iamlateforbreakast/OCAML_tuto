(* system.ml *)

open Obc
open Bus
open Equipment

module System = struct
   type t =
   {
      obc: Obc.t;
      equipment: Equipment.t;
      bus: Bus.t
   }

   (* Constructor *)
   let create () = {obc=Obc.create();equipment= Equipment.create();bus=Bus.create()}

   (* Printer *)
   let print (s: t) =
      Printf.printf "System:\n"

   (* execute *)
   let step (delta_t: float) (s: t) : System.t = 
      {obc=Obc.step delta_t s.obc;
       equipment=Equipment.step delta_t s.equipment;
       bus=Bus.step delta_t s.bus}
end
