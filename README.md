SuperCollider Spacemacs Layer
=============================

Layer for spacemacs to work with sclang and scsynth

# Download
* [SuperCollider](http://supercollider.github.io/download.html) (_current version 3.8_)
* [Spacemacs](http://spacemacs.org/)

# Installation
* Clone this repository in the `~/.emacs.d/private/` folder.
* You should have `~/.emacs.d/private/spacemacs-layers/supercollider` now.
* In case you have other private layers, be sure to move the `supercollider` folder into the proper folder.
* Change the SuperCollider.app path in the `packages.el` file if you installed SuperCollider somewhere else

# TODOs
  * Fix emacs not creating a new open buffer/working space when sclang starts
  * Fix buffers with .scd or in sclang-mode not connecting to the current sclang process
