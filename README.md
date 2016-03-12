# ocaml-cordova-plugin-progress

**Currently only for iOS**
Binding to
[cordova-plugin-progress](https://github.com/leecrossley/cordova-progress)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-progress-example).
**Not developed**

## What does cordova-plugin-progress do ?

```
Cordova / PhoneGap Plugin for Progress HUD Notifications via KVNProgress.
```

Source: [cordova-plugin-progress](https://github.com/leecrossley/cordova-progress)

## How to use ?

* See the [official documentation](https://github.com/leecrossley/cordova-progress)

## ! BE CAREFUL !

The plugin creates a new object called *progress*, but the object is
available when the *deviceready* event is handled.

We don't provide a *progress* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *progress* will be set to **undefined**
because the *progress* object doesn't exist when we create the variable.

Instead, we provide a function *progress* of type *unit -> progress Js.t* which creates the
binding to the *progress* javascript object. You must call it when the deviceready
event is handled, eg

```OCaml
let on_device_ready =
  let progress = Progress.progress () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
