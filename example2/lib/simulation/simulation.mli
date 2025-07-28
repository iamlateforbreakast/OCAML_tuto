sig
  type state =
  {
     time: float;
     quanta: float;
     env: Environment.t;
     sys: System.t;
  }
  val create -> int
  val print
  val step : int -> int
end