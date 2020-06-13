---
title: Laptop setup notes
description: Clean install to functioning workhorse
layout: post
---

This is mostly for my benefit.

Things to go from blank machine to fully functioning work laptop.

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
* Turn on automatic updates in update manager preferences, and automatic obsolete kernal removal
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
* [Install slack with
  flatpak](https://flathub.org/apps/details/com.slack.Slack), (available via
the software manager), sign in. - slack promote the snap version but that's not
installed by default.
* Install dotfiles by running [dotmatrix/bin/install](https://github.com/timabell/dotmatrix/blob/master/bin/install) (repo clone already pulled across with syncthing)
* Generate ssh key `ssh-keygen`, [add key to github](https://github.com/settings/keys)
* Link tomboy to sync'd notes (I use syncthing, not the built-in tomboy sync)

```
cd ~/.local/share
ln -s ~/Documents/tomboy
```

* Symlink ~/bin to a sync'd folder

```
cd ~
ln -s ~/Documents/programs/bin
```

* Install [jetbrains toolbox](https://www.jetbrains.com/toolbox/app/)
* Customize time in task bar to `| %H:%M:%S %p | %e %b %Y |`
* Lock screen with `Win+L` - start > keyboard > system > lock screen (Windows user habits)
* Switch to z-shell `chsh -s /usr/bin/zsh` - <https://askubuntu.com/questions/131823/how-to-make-zsh-the-default-shell/131838#131838>
* Setup touchpad

![Screenshot of mint touchpad settings with customisations](/assets/mouse-and-touchpad.png)

* Setup terminal colours and turn off transparency

![Screenshot mint terminal colours set to solarized](/assets/terminal-colours.png)

* Pomodoro timer in task bar: <https://cinnamon-spices.linuxmint.com/applets/view/131>
* Turn off all the system sounds and turn the volume down to 0%

## Firefox

* Open firefox, sign-in to sync
* Remove firefox tabs (because I use [Tree Style Tabs](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/))
  * `cd ~/.mozilla/firefox/..../`
  * `mkdir chrome`
  * `echo '#TabsToolbar { visibility: collapse !important; }' >> userChrome.css`
  * about:config > `toolkit.legacyUserProfileCustomizations.stylesheets` > `true`
  * restart firefox
  * Reference: <https://superuser.com/questions/1268732/how-to-hide-tab-bar-tabstrip-in-firefox-57-quantum#1268734>

## Docker

* compose <https://docs.docker.com/compose/install/>

## Postgres

[Use a docker image](https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198)

## XPS firmware updates

```
fwupdmgr get-devices
fwupdmgr get-updates
fwupdmgr update
```

refs:

* <https://fwupd.org/lvfs/docs/users>

## inotify

* inotify increase for:
  * RubyMine
  * Guard - <https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers>
  * Syncthing - <https://docs.syncthing.net/users/faq.html#inotify-limits>

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

## Shutter

* Fix shutter edit <https://itsfoss.com/shutter-edit-button-disabled/>
* Change default save location to `~/Documents/screenshots/shutter`

## asdf

* [install asdf version manager](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm) for all the things (ruby, node, golang etc.)

### NodeJs setup

	asdf plugin-add nodejs
	bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
	asdf install nodejs 8.16.1
	node -v

Keyring because nodejs packages are signed and validated
<https://github.com/asdf-vm/asdf-nodejs#install>

### Ruby setup if needed

	cd some-project
	asdf install
	gem install bundler

## Auto lock

* Configure BlueProximity to run at startup
* Set the locking command to `/usr/bin/gdbus call --session --dest org.cinnamon.ScreenSaver --object-path /org/cinnamon/ScreenSaver --method org.cinnamon.ScreenSaver.Lock 'AFK call me on xxx'`
* Set locking distance to 30 and duration to 10 seconds.
* ref: <http://www.webupd8.org/2011/05/blueproximity-use-bluetooth-device-to.html>

## See also

* <https://github.com/thoughtbot/laptop>
