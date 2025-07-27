(* system.ml *)

module System = struct
   type t =
   {
      obc: Example2.Obc.t;
      equipment: Example2.Equipment.t;
      bus: Example2.Bus.t
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
