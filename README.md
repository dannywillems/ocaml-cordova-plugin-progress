# ocaml-cordova-plugin-progress

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-progress/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-progress.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-progress)

**Currently only for iOS**

Binding to
[cordova-plugin-progress](https://github.com/leecrossley/cordova-plugin-progress)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-progress-example).
**Not developed**

## What does cordova-plugin-progress do ?

```
Cordova / PhoneGap Plugin for Progress HUD Notifications via KVNProgress.
```

Source: [cordova-plugin-progress](https://github.com/leecrossley/cordova-progress)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-progress https://github.com/dannywillems/ocaml-cordova-plugin-progress.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-progress [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin progress with
```Shell
cordova plugin add cordova-plugin-progress
```

## How to use ?

* See the [official documentation](https://github.com/leecrossley/cordova-progress)

## ! BE CAREFUL !

The plugin creates a new object called *progress*, but the object is
available when the *deviceready* event is handled.

We don't provide a *progress* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *progress* will be set to **undefined**
because the *progress* object doesn't exist when we create the variable.

Instead, we provide a function *Cordova_progress.t* of type *unit -> Cordova_progress* which creates the
binding to the *progress* javascript object. You must call it when the deviceready
event is handled, eg

```OCaml
let on_device_ready =
  let progress = Cordova_progress.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
