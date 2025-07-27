(* environment.ml *)

module Environment = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (e: t) =
    let _ = Printf.printf "Environment:\n" in
    Printf.printf ".temp = %f\n" e.temp

  (* Step *)
  let step (delta_t: float)(e: t) : t =
    if (delta_t > 10.0) then
      {temp=30.0}
    else
      {temp=e.temp}

end
