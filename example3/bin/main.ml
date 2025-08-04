let () = 
  if C.Types.foo_version <> 1 then
    failwith "foo only works with libfoo version 1";
  let err_code = C.Functions.foo_init () in
  if err_code <> 0 then
    failwith (Printf.sprintf "foo_init: %d" error_code);
 
  C.Functions.foo.foo_fnubar (Some "fnubar!"); 
  C.Functions.foo_exit ();

  print_endline "Hello, World!"
;;
