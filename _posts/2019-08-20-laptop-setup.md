---
title: Laptop setup notes
description: Clean install to functioning workhorse
layout: post
---

This is mostly for my benefit. Things to go from blank machine to fully functioning work laptop.

* [Download mint cinnamon x64 torrent](https://linuxmint.com/download.php)
* Burn to USB stick
* [Configure Dell XPS 13 to use AHCI mode](https://askubuntu.com/questions/696413/ubuntu-installer-cant-find-any-disk-on-dell-xps-13-9350/696414#696414)
* Boot to stick with `F12`
* Install mint
* Bootstrap my dotmatrix package list [my bootstrap file](https://github.com/timabell/dotmatrix/blob/master/bin/bootstrap.sh)

Like this (don't laugh/cringe):

    curl https://raw.githubusercontent.com/timabell/dotmatrix/master/bin/bootstrap.sh | sh

This installs my [usual package list](https://github.com/timabell/dotmatrix/blob/master/bin/packages.txt)

* Run updates
* Configure nemo file manager to always use list view
* Run syncthing-gtk from system menu (auto-installs syncthing binary)
    * Configure syncthing not to route over internet (no relay, no public discovery, no NAT traversal)
* [Configure firewall-config](https://firewalld.org/documentation/utilities/firewall-config.html) to allow syncthing
    * Add manual service syncthing
    * Allow tcp 22000 and 21027 udp
    * Make home network use home zone
    * Add syncthing to home zone
    * Runtime to permanent

![firewall config screenshot](/assets/firewall-config-syncthing.png)

* Tell new and old devices about each other in syncthing, watch `~/Documents` etc magically sync
* Install slack (flatpak, in software manager), sign in. - slack promote the snap version but that's not installed by default.
* Install dotfiles by running [dotmatrix/bin/install](https://github.com/timabell/dotmatrix/blob/master/bin/install) (repo clone already pulled across with syncthing)
* Generate ssh key `ssh-keygen`, [add key to github](https://github.com/settings/keys)
* Link tomboy to sync'd notes (I use syncthing, not the built-in tomboy sync)

```
cd ~/.local/share
ln -s ~/Documents/tomboy
```

* Install [jetbrains toolbox](https://www.jetbrains.com/toolbox/app/)
* Customize time in task bar to `| %H:%M:%S %p | %e %b %Y |`
* Lock scren with `Win+L` - start > keyboard > system > lock screen (Windows user habits)
* Switch to z-shell `chsh -s /usr/bin/zsh` - <https://askubuntu.com/questions/131823/how-to-make-zsh-the-default-shell/131838#131838>
* Setup touchpad

![Screenshot of mint touchpad settings with customisations](/assets/mouse-and-touchpad.png)

* Setup terminal colours and turn off transparency

![Screenshot mint terminal colours set to solarized](/assets/terminal-colours.png)

* Trello card number addon: <https://userstyles.org/styles/79880/trello-card-ids-small> (with stylish plugin, installed by firefox sync)
* Pomodoro timer in task bar: <https://cinnamon-spices.linuxmint.com/applets/view/131>

## Ruby setup

	cd some-project
	asdf install
	gem install bundler

## todo

* remove firefox tabs - because I use [Tree Style Tabs](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
  * hide normal tabs <https://superuser.com/questions/1268732/how-to-hide-tab-bar-tabstrip-in-firefox-57-quantum#1268734>
* rest of dotmatrix things
* [install asdf version manager](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm) for all the things (ruby, node, golang etc.)

# See also

* <https://github.com/thoughtbot/laptop>
