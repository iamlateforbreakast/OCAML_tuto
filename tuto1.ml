#use "topfind";;
#require "core";;

module StringMap = Map.Make(String);;

open Core
open Stdlib

(* Single line comment *)

(* A structure *)
type sequence_action = { action: int }

type failure = { time_marker: int }

type my_struct = { count : int; step: int }

(* type rover = { int_map : int StringMap.empty } *)
type rover = { obt: int; int_map : int }

let step1 = { action = 1}
let step2 = { action = 2}
let step3 = { action = 3}
let step4 = { action = 4}

let tsss_sequence = [step1; step2; step3; step4] 

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
let create =
  {
    obt = 0;
    int_map = 0;
  }

(** sim_start *)
let rec sim_start x =
  if (x.count == 10000) then { count = 0; step = x.count}
  else 
    sim_start { count = x.count + 1; step = 1}

let () = 
  let t = sim_start { count = 0; step = 1} in
    printf "Hello %d %d\n" t.count t.step
