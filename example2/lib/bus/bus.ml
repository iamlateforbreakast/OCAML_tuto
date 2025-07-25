(* bus.ml *)

module Bus = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (b: Bus.t) =
    let _ = Printf.printf "Bus:\n" in
    let _ = Printf.printf ".temp = %f\n" b.temp

end
