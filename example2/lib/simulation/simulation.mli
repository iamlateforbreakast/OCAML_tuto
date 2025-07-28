(* simulation.mli *)

(** This module defines the core simulation logic,
    managing time, quanta, and interacting with
    System and Environment components. *)

open System
open Environment

module Simulation : sig
  (** The internal state of the simulation. *)
  type state =
    {
      time: float;    (** Current simulation time *)
      quanta: float;  (** Time step increment per iteration *)
      env: Environment.t; (** The current environment state *)
      sys: System.t;  (** The current system state *)
    }

  (** [create ()] initializes a new simulation state with default values. *)
  val create : unit -> state

  (** [print s] prints the current state [s] of the simulation to standard output. *)
  val print : state -> unit

  (** [execute t s] runs the simulation from state [s] for a target duration [t].
      It returns the final state after the execution. *)
  val execute : float -> state -> state

end
