(* environment.ml *)

type Environment = { temp : float }

(* Constructor *)
let create () = { temp = 25.0 }

(* Printer *)
let print (e: Environment) =
  let _ = Printf.printf "Environment:\n" in
  let _ = Printf.printf ".temp = %f\n" e.temp
