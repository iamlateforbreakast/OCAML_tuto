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

   (* execute *)
   let execute (t: float) (o: Obc.t) : Obc.t = o
end
