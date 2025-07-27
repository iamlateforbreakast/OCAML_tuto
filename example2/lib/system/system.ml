(* system.ml *)

open Example2

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
   let print (s: System.t) =
      Printf.printf "System:\n"

   (* execute *)
   let step (t: float) (s: System.t) : System.t = 
      {obc=Obc.step t s.obc; equipment=Equipment.step t s.equipment}
end
