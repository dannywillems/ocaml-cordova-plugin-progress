(* -------------------------------------------------------------------------- *)
(* See the official documentation *)
class progress : Ojs.t ->
  object
    inherit Ojs.obj
    (* ---------------------------------------------------------------------- *)
    (* show a progress loading *)
    (* show ?[string_to_show] *)
    method show     : ?text:(string [@js.default "Loading..."])   ->
                      unit                                        ->
                      unit
    (* show_cb ?[success_callback] ?[error_callback] ?[string_to_show] *)
    method show_cb  :  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())]) ->
                       ?err_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
                       ?text:(string [@js.default "Loading..."])              ->
                       unit                                                   ->
                       unit
    (* ---------------------------------------------------------------------- *)

    (* ---------------------------------------------------------------------- *)
    (* Update the progress loading *)
    (* update *)
    method update    : ?text:(string [@js.default "Loading..."])   ->
                       unit                                        ->
                       unit
    (* update_cb ?[success_callback] ?[error_callback] ?[string_to_show] *)
    method update_cb : ?succ_cb:((unit -> unit) [@js.default (fun () -> ())]) ->
                       ?err_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
                       ?text:(string [@js.default "Loading..."])              ->
                       unit                                                   ->
                       unit
    (* ---------------------------------------------------------------------- *)

    (* ---------------------------------------------------------------------- *)
    (* hide the progress loading *)
    (* hide ?[success_callback] ?[error_callback] *)
    method hide : ?succ_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
                  ?err_cb:((unit -> unit) [@js.default (fun () -> ())])   ->
                  unit                                                    ->
                  unit
    (* ---------------------------------------------------------------------- *)
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> progress
[@@js.get "progress"]
(* -------------------------------------------------------------------------- *)
