(* type_description.ml *)
open Ctypes

module Types (F : Ctypes.TYPE) = struct
  open F

  let foo_version = 1
end
