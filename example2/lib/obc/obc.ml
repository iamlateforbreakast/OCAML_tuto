(* obc.ml *)

open Bus

module Obc = struct
   type t = 
   {
      frequency: int;
      pc: int
   }
         
   (* Constructor *)
   let create () = 
      {
         frequency=10000000; 
         pc=0
      }

   (* Printer *)
   let print (o: t) =
     let _ = Printf.printf "Obc:\n" in
     Printf.printf ".pc=%d\n" o.pc

   (* execute *)
   let execute (t: float) (o: t) : t =
     { frequency=o.frequency; pc=o.pc}

end
