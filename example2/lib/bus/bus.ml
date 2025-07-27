(* bus.ml *)

module Bus = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (b: t) =
    let _ = Printf.printf "Bus:\n" in
    Printf.printf ".temp = %f\n" b.temp
  
  (* Step *)
  let step (delta_t: float)(b: t) : t =
    if (delta_t > 10.0) then
      { temp: 30.0 }
    else
      { temp: 25.0 }

end
