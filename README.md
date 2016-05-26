# ocaml-cordova-plugin-progress

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-progress/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-progress.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-progress)

**Currently only for iOS**

Binding to
[cordova-plugin-progress](https://github.com/leecrossley/cordova-plugin-progress)

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
