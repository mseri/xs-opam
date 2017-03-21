
[![Build Status](https://travis-ci.org/xapi-project/xs-opam.svg?branch=master)](https://travis-ci.org/xapi-project/xs-opam)

# Opam Repository for XenServer

This [Opam] repository supports building components in the XenServer
toolstack implemented in [OCaml].  You can add this Git repository as a
remote Opam repository (with some restriction):

  ```
  opam repo add xs-opam https://github.com/xapi-project/xs-opam.git
  ```

or (this will lift the restrictions on xenctrl):

  ```
  git clone https://github.com/xapi-project/xs-opam.git
  cd xs-opam && sh into_repo.sh && cd ..
  opam repo add xs-opam xs-opam/
  ```

## Layout of This Repository

Packages are organised into namespaces. They are equivalent from the
perspective of the [Opam] user.

* `upstream`: packages that we don't control with fixed versions.
* `xs`: packages that we control, with fixed versions.
* `xs-extra`: packages that we control, following their respective
  master branch.

    ```
    ./packages
    ./packages/upstream
    ./packages/upstream/rpc.1.9.11.jonludlam
    ./packages/xs
    ./packages/xs/xapi-backtrace.0.4
    ./packages/xs/cdrom.0.9.2
    ./packages/xs-extra
    ./packages/xs-extra/message-switch.master
    ./packages/xs-extra/xapi-rrd-transport.master
    ```

The `packages/` hierarchy contains [Opam] entries for each package. These
can be copied *untouched* from other, existing [Opam] repositories. The
`packages/` is basically what you get when using this repository as a
remote Opam repository. A typical entry consists of three files:

* `descr` - textual desciption
* `opam` - dependencies and build instructions
* `url` - link to source code

[Opam]:   http://opam.ocaml.org
[OCaml]:  http:/ocaml.org

