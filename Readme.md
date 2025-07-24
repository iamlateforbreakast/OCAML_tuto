How to install OCAML on Fedora 42

    sudo dnf install ocaml ocaml-findlib opam

This will install the REPL tool (ocaml), the library manager, the bytecode compiler (ocamlc), the native binaries compiler (ocamlopt) and the source based package manager (opam).

Add the necessary environment variable to .bashrc.

    opam init

    eval $(opam -version)

