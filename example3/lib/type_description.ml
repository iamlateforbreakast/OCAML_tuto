(* type_description.ml *)

module Types (F : Ctypes.TYPE) = struct
  open F

  let foo_version = F.int
end
