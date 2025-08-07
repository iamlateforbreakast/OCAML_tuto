How to install OCAML on Fedora 42:
----------------------------------

    sudo dnf install ocaml ocaml-findlib opam

This will install the REPL tool (ocaml), the library manager, the bytecode compiler (ocamlc), the native binaries compiler (ocamlopt) and the source based package manager (opam).

Add the necessary environment variables to .bashrc.

    opam init

    eval $(opam -version)

Using dune to build project
---------------------------

Dune needs to be downloaded and installed using the package manager.

    opam install dune

    dune init proj example2

    dune build example2

    dune exec example2

https://ocamlverse.net/content/quickstart_ocaml_project_dune.html

Use C functions in projects:
----------------------------

    sudo dnf install libffi-devel

    opam install ctypes ctypes-foreign

    ocamlfind -list

Use parallelism in projects:
----------------------------

    opam install domainslib


Configure Visual Code for OCAML:
--------------------------------

Install VSCode extension ocamllabs.ocaml-platform

    opam install ocaml-lsp-server ocamlformat

OCaml by Examples
-----------------

Visit o1-labs.github.io/ocamlbyexample/basics-utop.html
