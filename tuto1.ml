#use "topfind";;
#require "core";;

module StringMap = Map.Make(String);;

open Core
open Stdlib

(* Single line comment *)

(* A structure *)
type sequence_action = { action: int }

(* type my_struct = { count : int; step: int } *)

(* type rover = { int_map : int StringMap.empty } *)
type environment = { 
  time : int;
  int_map : int 
}

(* The software state *)
type sw = {
  obt: int
}

type state = {
  s: sw;
  e: environment;
  time: int
}

let step1 = { action = 1}
let step2 = { action = 2}
let step3 = { action = 3}
let step4 = { action = 4}
(*let step5 = 
  let d = 1 in printf "D=%d\n" d;*)

let tsss_sequence = [step1] 

type sgm_ram = {
  tsss_commanded_status: int;
  tsss_next_step: int;
  tsss_right_hdrm_status: int;
  tsss_left_hdrm_status: int;
  tsss_right_sa_status : int;
  tsss_left_sa_status : int
}

type sgm_eeprom = {
  ade_min_temp: int;
  hdrm_min_temp : int;
  sa_min_temp : int;
}

type sgm_eeprom = { tsss_delay: int }

(** rover_create *)
let env_init =
  {
    time = 0;
    int_map = 0;
  }

let sw_init =
  {
    obt = 0;
  }

let initial_state = {
  s = sw_init;
  e = env_init;
  time = 0;
}

(** sim_start *)
let rec sim_start (s: state) =
  if (s.time == 0) then s
  else 
    sim_start { s with time = s.time - 1}

let () = 
  let s0 = initial_state in
  let final_state = sim_start s0 in
    printf "Hello %d\n" final_state.e.int_map
