(* equipment.ml *)

module Equipment = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (e: t) =
    let _ = Printf.printf "Equipment:\n" in
    Printf.printf ".temp = %f\n" e.temp
  
  let step (delta_t: float)(e: t) =
    if delta_t > 10.0 then
      {temp=e.temp}
    else
      {temp=0.0}

end