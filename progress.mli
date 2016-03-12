(* -------------------------------------------------------------------------- *)
(* See the official documentation *)
class type progress =
  object
    (* ---------------------------------------------------------------------- *)
    (* show a progress loading *)
    (* show *)
    method show : unit Js.meth
    (* show_str [string_to_show] *)
    method show_str : Js.js_string Js.t -> unit Js.meth
    (* show_succ_err [success_callback] [error_callback] *)
    method show_succ_err : (unit -> unit) -> (unit -> unit) -> unit Js.meth
    (* show_cb [success_callback] [error_callback] [string_to_show] *)
    method show_cb : (unit -> unit) -> (unit -> unit) -> Js.js_string Js.t ->
      unit Js.meth
    (* ---------------------------------------------------------------------- *)

    (* ---------------------------------------------------------------------- *)
    (* Update the progress loading *)
    (* update *)
    method update : unit Js.meth
    (* update_str [string_to_show] *)
    method update_str : Js.js_string Js.t -> unit Js.meth
    (* show_succ_err [success_callback] [error_callback] *)
    method update_succ_err : (unit -> unit) -> (unit -> unit) -> unit Js.meth
    (* update_cb [success_callback] [error_callback] [string_to_show] *)
    method upadte_cb : (unit -> unit) -> (unit -> unit) -> Js.js_string Js.t ->
      unit Js.meth
    (* ---------------------------------------------------------------------- *)

    (* ---------------------------------------------------------------------- *)
    (* hide the progress loading *)
    (* hide *)
    method hide : unit Js.meth
    (* hide [success_callback] [error_callback] *)
    method hide_cb : (unit -> unit) -> (unit -> unit) -> unit Js.meth
    (* ---------------------------------------------------------------------- *)
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val progress : unit -> progress Js.t
(* -------------------------------------------------------------------------- *)
