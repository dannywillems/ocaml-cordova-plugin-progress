(* -------------------------------------------------------------------------- *)
(* See the official documentation *)
(* ---------------------------------------------------------------------- *)
(* show a progress loading *)
(* show_cb ?[success_callback] ?[error_callback] ?[string_to_show] *)
val show_cb :
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())]) ->
  ?err_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?text:(string [@js.default "Loading..."])              ->
  unit                                                   ->
  unit
[@@js.global "progress.show"]
(* ---------------------------------------------------------------------- *)

(* ---------------------------------------------------------------------- *)
(* update_cb ?[success_callback] ?[error_callback] ?[string_to_show] *)
val update :
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())]) ->
  ?err_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?text:(string [@js.default "Loading..."])              ->
  unit                                                   ->
  unit
[@@js.global "progress.update"]
(* ---------------------------------------------------------------------- *)

(* ---------------------------------------------------------------------- *)
(* hide the progress loading *)
(* hide ?[success_callback] ?[error_callback] *)
val hide :
  ?succ_cb:((unit -> unit) [@js.default (fun () -> ())])  ->
  ?err_cb:((unit -> unit) [@js.default (fun () -> ())])   ->
  unit                                                    ->
  unit
[@@js.global "progress.hide"]
(* ---------------------------------------------------------------------- *)
(* -------------------------------------------------------------------------- *)
