(* dpu.ml *)

module Dpu = struct
  type t = { temp : float }

  (* Constructor *)
  let create () = { temp = 25.0 }

  (* Printer *)
  let print (d: Dpu.t) =
    let _ = Printf.printf "Dpu:\n" in
    let _ = Printf.printf ".temp = %f\n" d.temp

end
