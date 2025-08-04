How to install OCAML on Fedora 42

    sudo dnf install ocaml ocaml-findlib opam

This will install the REPL tool (ocaml), the library manager, the bytecode compiler (ocamlc), the native binaries compiler (ocamlopt) and the source based package manager (opam).

Add the necessary environment variable to .bashrc.

    opam init

    eval $(opam -version)

Using dune to build project
---------------------------

    dune init proj example2

    cd example2

    dune build

    dune exec ./bin/main.exe

https://ocamlverse.net/content/quickstart_ocaml_project_dune.html

Use C functions in projects:
----------------------------

    opam install ctypes ctypes-foreign

    ocamlfind -list
