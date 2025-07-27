(* obc.ml *)

open Bus

module Obc = struct
   type t = 
   {
      frequency: float;
      pc: int
   }
         
   (* Constructor *)
   let create () = 
      {
         frequency=10000000.0; 
         pc=0
      }

   (* Printer *)
   let print (o: t) =
     let _ = Printf.printf "Obc:\n" in
     Printf.printf ".pc=%d\n" o.pc

   (* execute *)
   let execute (delta_t: float) (o: t) : t =
   if (delta_t > (1 / o.frequency)) then 
     { frequency=o.frequency; pc=o.pc+1}
   else
     { frequency=o.frequency; pc=o.pc}

end
