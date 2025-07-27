(* environment.ml *)

module Environment = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (e: t) =
    let _ = Printf.printf "Environment:\n" in
    Printf.printf ".temp = %f\n" e.temp

end
