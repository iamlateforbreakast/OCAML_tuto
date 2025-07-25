(* environment.ml *)

module Environement = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (e: Environment.t) =
    let _ = Printf.printf "Environment:\n" in
    let _ = Printf.printf ".temp = %f\n" e.temp

end