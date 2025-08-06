(* function_descriptions.ml *)
open! Ctypes
module Types = Types_generated

(* Put the function definitions of the C library here *)

module Functions (F : Ctypes.FOREIGN) = struct
  open F

  let say_hello1 = foreign "hello1" (string_opt @-> returning void)
  
  let say_hello2 = foreign "hello2" (void @-> returning void)
end
