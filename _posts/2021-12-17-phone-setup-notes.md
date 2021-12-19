---
title: Phone setup notes
layout: post
---

Well this makes a good counterpart to the [laptop setup post](/2019/08/20/laptop-setup/). Similar idea, it's just a place for me to keep track of all the things involved in building a new phone from scratch. This one also explains to people who look at me like I'm mad why I don't just "do what everyone else does".

## Why don't you just...?

Most people don't think their phone install deserves a blog post, or even a lot of thought beyond a visit to the Apple "genius" bar (lol) so they can push the "copy everything to my new phone button". I'm not most people. I've been running Linux since approximately [Ubuntu 5.04 Hoary Hedgehog](https://en.wikipedia.org/wiki/Ubuntu_version_history#Ubuntu_5.04_(Hoary_Hedgehog)) in 2005 (the brown one). Even while being a ".NET developer", back when [Microsoft were still trying to simultaneously ignore and destroy Linux](https://en.wikipedia.org/wiki/Halloween_documents). What strange times we live in now, has the leopard changed its spots?

There are many factors in this battle for the phone in your pocket.

* The GPL's fundamental truth is that there is a tension for control over your devices between the creators of software and the users of that software. iOS and Android both believe that the users can't be trusted with full control over their device because "security".
* The apps matter, I do actually want to use a phone for useful things, and increasingly web applications are a poor cousin to their equivalent apps. (Facebook, horror that it is, oscillates between making a browser unusable and making it just about possible to read and interact, they *really* want all that juicy extra data that you can get from being an installed app).

> iOS and Android both believe that users can't be trusted with full control over their device

### Why not just Apple iOS?

Yes I know the iPhone crowd can just push a button on the new phone and have it look like the old phone, but iOS is the polar opposite of what I want my technology to be: under *my* control. That means root. That means open source. That means GPL.

iOS certainly does have some unique advantages that I will be sad to miss out on but not sad enough to give up all the other things I care about.

#### iOS, the good

* A secure boot chain, remarkably hacker-proof - even with physical device access which is very impressive.
* Impressively effective device-to-device migration of user settings and data (android failed miserably at this in my experiments)

#### iOS, the dubious-to-bad

* Complete reliance on a single vendor for looking after all your precious "data". This in my view is risky no matter how good the vendor is.
	*	In 2012 this was demonstrated as [Mat Honan had *all* his data and devices wiped and locked remotely when a hacker took over his Apple account](https://www.wired.com/2012/08/apple-amazon-mat-honan-hacking/), and he had no other copy of all his precious family photos. A cautionary tale for all of us.
	* Someone I know lost everything on their iPhone when the OS upgrade process somehow managed to do the following:
		1. backup the phone to the iCloud
		2. wipe the phone and install the updated iOS (I understand this is normal procedure)
		3. back up the blank phone to iCloud *overwriting* the only backup (apparently there was only a single slot)
		4. restore the blank backup to the updated phone
		5. declare success, leaving my friend with all his data gone and a factory-installed OS
* No root (a problem for syncthing, independent backups and general user-control)
* No user-replaceable OS (aka ROM)
* No open source
* All the apps cost more!

### Why not just stock android?

"So you must be an android dude then" you say. Well no because frankly android isn't much better these days. Ever heard of [AOSP? (The Android Open Source Project)](https://source.android.com/) Well that's an ever-shrinking piece of what people call Android these days. Piece by piece [google have been replacing open-source android with proprietary rewrites](https://arstechnica.com/gadgets/2018/07/googles-iron-grip-on-android-controlling-open-source-by-any-means-necessary/). Combine that with proprietary drivers for the endless churn in hardware. If you can even install ASOP on a device good luck getting much to work. The idea of android being "the open source one" in the true spirit of the GPL is a distant and fading memory.

### Something other than iOS/Android?

It's all about the apps.

> An operating system is not that useful on its own.

There's a reason [Ballmer shouted "developers developers developers"](https://www.youtube.com/watch?v=KMU0tzLwhbE) (amusing as this meme has become in the abstract). An operating system is not that useful on its own. Operating systems live and die by the applications (aka apps) available on them, and the utility and value they in turn bring to their users.

iOS and Android have utterly captured the app market on phones, creating a duopoly in the phone space.

Even the mighty Nokia (with [Symbian](https://en.wikipedia.org/wiki/Symbian)), [Research In Motion (RIM) with Blackberry](https://en.wikipedia.org/wiki/BlackBerry_10)`*` and Microsoft with [Windows Phone](https://en.wikipedia.org/wiki/Windows_Phone) failed to win against them and eventually threw in the towel.

`*` Blackberry seems to have all but fallen off the radar, they started shipping android in the end basically being a android phone with a physical keyboard thus becoming part of the apple-google duopoloy..

So for me that rules out for the time being all the Linux based phones such as a [Librem 5 running PureOS](https://shop.puri.sm/shop/librem-5/). (See below).

> It's only when alternatives like Librem/PureOS gain traction that we'll see the makers of apps, websites and phones have to create and adopt open standards that allow further diversity and innovation.

The fact the Librem exists and seems to be sustainable are encouraging signs for the breaking of the google+apple duopoly on mobiles. It's only when alternatives like Librem/PureOS gain traction that we'll see the makers of apps, websites and phones have to create and adopt open standards that allow further diversity and innovation. Currently we are seeing a repeat of the "works best in Netscape / Internet Explorer" duopoly of the browser wars that was eventually broken forever by Firefox, Opera and friends forcing websites to stop using proprietary extensions and stick to open standards.

#### Dearly departed

##### Nokia / Symbian

Symbian was briefly ahead on features as an OS in my opinion. I had a Sony Ericsson [P800](https://en.wikipedia.org/wiki/Sony_Ericsson_P800) and [P910](https://en.wikipedia.org/wiki/Sony_Ericsson_P910) and in their day they were *almost* amazing phones, hampered by lacking hardware (2g at the dawn of 3g, serial port connectivity emulated over usb, and for god knows what reason Sony were still trying to beat SD cards with [memory stick](https://en.wikipedia.org/wiki/Memory_Stick)). Consumers flocked away from them in droves to the new iPhone.

##### Microsoft / Windows Phone OS

Microsoft's ["Windows Phone" was a triumph of a phone operating system](https://www.theverge.com/2017/10/10/16452162/windows-phone-history-glorious-failure), and everyone I knew that had one absolutely loved the operating system. But [Microsoft just couldn't persuade the big-name mobile-app developers](https://www.theverge.com/2015/10/23/9602350/microsoft-windows-phone-app-removal-windows-store) (i.e. companies) to invest the endless effort required to create and maintain a third version of their apps for another app store.

##### OpenMoko / Neo FreeRunner

I had high hopes for the truly open Neo running OpenMoko, but it didn't stand a hope in hell amongst the rapidly evolving tech and software at the time. I bought the [Neo FreeRunner](https://en.wikipedia.org/wiki/Openmoko#Neo_FreeRunner) and it was an exciting time, but it quickly became a relic.

##### CyanogenMod

After many years of being the goto android-variant mobile OS for non-conformists, sadly [CyanogenMod](https://en.wikipedia.org/wiki/CyanogenMod) imploded in 2016. The code lives on in LineageOS (see below).

#### Promising futures

Two currently active non-android physical phone projects, and several more ongoing linux based (i.e. non-android) mobile-friendly operating system efforts. Although these will never cross the radar of most people just like linux didn't for many years) these are important foundational projects.

##### Purism's Librem 5 Phone running PureOS (Linux)

* [Librem 5 phone](https://shop.puri.sm/shop/librem-5/)
* [PureOS](https://pureos.net/)

The [Librem 5](https://shop.puri.sm/shop/librem-5/) is worth a look if you want to take it to the next level of openness, however it comes with a compromise in specifications, a hefty price tag (inevitable due to lower production volumes) and no android / iOS apps.

You might however want to consider spending your dollars as a vote for the future you want to see.

The [Librem 5 runs Linux (PureOS), not Android](https://puri.sm/products/librem-5/pureos-mobile/). This is great but as of 2021 does mean it suffers from the "app" problem (see above).

Because of the "app" problem I'm not ready to make the jump to a Linux based smartphone that can't run android apps. I'm also not particularly keen to drop quite this much in specification for the benefit.

Personally I'm happy with the OnePlus compromise of specification plus apps versus openness for now, but I'm very glad to see Purism pushing the frontier of openness and maybe I'll join their users one day.

##### PinePhone Pro

The [PinePhone Pro](https://www.pine64.org/pinephonepro/) is a low spec but very open linux phone. A follow up to the original PinePhone.

"pre-orders from developers on October 15, 2021, and expect to have them delivered by December"

Phones like this are important in building momentum in the capability of non iOS/Android software even though they will never be mainstream phones themselves.

##### UBPorts Ubuntu Phone (Linux)

Canonical killed the Ubuntu Phone and the [Ubuntu Touch](https://en.wikipedia.org/wiki/Ubuntu_Touch) operating system, but the software lives on in [ubports](https://ubports.com/). (Presumably that's short for UBuntu Ports)

##### Plasma (Linux KDE for phones)

[Plasma Mobile](https://plasma-mobile.org/) is a variant of the KDE Plamsa desktop specifically for mobiles.

Learn more about [Plasma on Wikipedia](https://en.wikipedia.org/wiki/Plasma_Mobile)

##### Mobian - debian linux for phones

[Mobian](https://mobian-project.org/) is encouraging to see. Debian linux's strenth has always been its governance and stability. Debian has been a rock in the stormy seas of open source even as different people have passed through its team. This is because debian has a strong set of organisational rules that are above and beyond any individual contributor. The fact that they are working on a mobile variant is very encouraging.

## Secure boot

There's the secure boot chain and device locking. This can be a good thing or a bad thing depending on the power dynamic between users and providers (and maybe even the state/government).

It is true that your device is less "secure" with the bootloader unlocked (as the phone likes to scream at you every time you boot it up), at least to attackers with physical access to your device, however I think that's worth the trade for full control of your device (that you paid for and "own").

[Security is not an absolute](https://www.isaca.org/resources/isaca-journal/issues/2021/volume-6/evidence-based-prioritization-of-cybersecurity-threats). You have to consider cost, inconvenience, human behaviour, the value of an attack target, the motivations of different actors (state, organised crime, hackers, opportunist thieves, trolling friends etc). For me an encrypted data partition and a passcode will do for physical security. In theory you can get full secure boot chain for custom operating systems but even on a linux laptop this is non-trivial currently.

There's an important difference here between google/apple considering the security of their entire device eco-system in the hands of every kind of user, and the security of an individual's device customised to suit them. If google turn off secure boot for everyone then it makes it that much more likely that someone will successfully develop and spread an android virus that corrupts the boot chain. If I turn it of it's a rounding error on the probability, and a marginal difference to the "security" of my own device.

### Apple's secure boot chain

Apple don't want you to fiddle with the OS they control, so you don't get to touch it without "jailbreaking" it. Jailbreaking is done by exploiting a security flaw, and it's a cat and mouse game with Apple fixing bugs to close holes and hackers finding new ones to regain control of the devices. Not a game I want to play just to have control over my own hardware. This 100% rules out iOS for me, it's a complete dealbreaker. No matter how shiny, how bug free, how capable it is I wouldn't trade unless there was absolutely no alternative.

### Android's secure boot chain

Android also secure their boot chain by default, however whether you can unlock it and flash a different recovery/bootloader/OS/ROM depends on the phone manufacturer, individual device, and sometimes the phone network provider (aka locking/unlocking).

This means choose your device and provider carefully if you wish to unlock without wasting your time trying to jailbreaking a locked device.

## Hardware choices

Given the "app" problem, any devices not capable of running Android or a derivative are currently out of the running (sad times).

A non-negotiable for me is manufacturer support for replacing the bootloader and everything above that (OS, apps). This ensures the life of the device beyond the point at which the manufacturer loses interest or does something horrific/stupid. This is also a signal for who is truly in charge of the device once it's "yours" - you the user or the supplier and their developers. By locking you out of making modifications it's a clear signal that you are not to be trusted with the power over your own device.

As the useful innovation in hardware slows down (2G to 3G was a big jump, but 8-megapixels camera to 32-megapixel cameras is less foundational) it will be less often that devices will become obsolete through huge leaps in capability. It will also mean that phone hardware will inevitably become more commodity and less proprietary, giving a chance for more open standards to get a foothold (just as x86 replace proprietary CPU architectures many decades ago), while still being acceptably capable. We shouldn't be throwing out devices because the manufacturer decided not to provide security patches for their OS variant, and certainly not because the manufacturer took away a feature we like through forced updates.

### Google Nexus / Pixel (meh)

I have run a [google nexus](https://en.wikipedia.org/wiki/Google_phone) 4 previously which was flashable and rootable, but long since obsolete in hardware capabilities (and suffered a hardware failure). I never looked back at the google line after I discovered OnePlus, I can't comment on whether the current pixel phones are a good device for my constraints. I don't particularly want to further feed the beast. If you want the authentic pure google experience I guess these are probably worth a look but the pure google experience seems less and less appealing as the years roll on.

### Sony (yuck)

Someone told me that a particular Sony phone was flashable, I researched it, found instructions on flashing it, ordered one... and couldn't flash it. Discussing with Sony support it transpired that that precise model was sometimes flashable and sometimes not, and the only way to find out was to order one and look at the serial number. Fuck you Sony. They never have understood the open source movement and look like they still don't. They always treated their kit like appliances not a blend of hardware and software (or firmware) with everything that means for the long term management of the software. It's a shame because they do make nice hardware. I'd still buy a dumb Sony audio amplifier but not much else of theirs. Returned and refunded, try again...

### OnePlus (yay)

This is my choice for the new [OnePlus 9 Pro](https://www.oneplus.com/uk/9-pro) I'm trying to set up, and the [OnePlus 5T](https://www.oneplus.com/uk/support/spec/oneplus-5t) I've been using for more than a couple of years now.

They don't make the grade for the pure "everything must be open including chip bytecode and chip architecture" as they use proprietary chips, but they make the right balance for me of reasonably high spec hardware for a reasonable price, android compatibility, and the ability to flash whatever ROM/OS you like (at your own risk).

I've been running a OnePlus 5t for a while now (bought outright, no network lockin or contract nonsense) and generally happy enough with it. There are some bugs and storage is starting to constrain hence the upgrade, plus the camera could be better by modern standards and I don't fancy carrying a separate camera.

I now have had the OnePlus 9 Pro sat in a drawer for two months waiting for me to figure out what-the-[FSM](https://en.wikipedia.org/wiki/Flying_Spaghetti_Monster) to run on it, hence this blog post. It's already been unlocked and I've tried flashing a couple of things but am not happy with the setup yet. I stopped looking at it while I concentrated all my efforts on making sure my business was going in the right direction (or any direction at all).

> To get root you have to wipe the phone

The OnePlus comes with OxygenOS (an android derivative) preinstalled, but not rooted and with a locked bootloader. To get root you have to wipe the phone which means it's important to do it before you start using it. It's caused me no end of pain that you can't use [titanium backup](https://www.titaniumtrack.com/titanium-backup.html) to backup all your data without root, and you can't get root without losing your files. I understand why (so you can't just unlock a phone to steal all the data) but that doesn't make it less of a pain in the arse. Bonus points for operating system updates (over the air / OTA or just normal updates) de-root the phone.


## So what OS options does that leave?

So not iOS and preferably not Android either.

It's worth mentioning that some (most/all?) phone manufacturers make customizations to Android or even complete [forks](https://en.wikipedia.org/wiki/Fork_(software_development)) that you may or may not want.

* Samsung (for the Galaxy line of phones) replaces the "launcher" with the ["Samsung Experience"](https://en.wikipedia.org/wiki/Samsung_Experience)
* OnePlus of Shenzhen ship their phones with [OxygenOS](https://www.oneplus.com/uk/oxygenos), this is as I understand it a customization (fork if you will) of Android. [More about OxygenOS on Wikipedia](https://en.wikipedia.org/wiki/OxygenOS)

### Researching the options

I don't follow this stuff all the time so I had to do some googling ([duckduckgo](https://duckduckgo.com/)-ing). Here's some useful comparisons I turned up:

* [It's FOSS, Open Source Mobile OS Alternatives To Android](https://itsfoss.com/open-source-alternatives-android/) - mostly pure linux things that don't have the android app ecosystem
* [PC Magazine, Break Away From Android: 7 Free Open-Source Mobile OSes to Try](https://uk.pcmag.com/linux/131295/break-away-from-android-7-free-open-source-mobile-oses-to-try)

I've got more to learn/research here so I'll expand this section as and when I learn more. Think of this as a [bliki](https://www.webopedia.com/definitions/bliki/). There's a full history in git (link at end).

### Alternatives to iOS and stock Android

I now need to look into the below and decide what to run (maybe with some trial flashing). Once that's done it'll be on to the slog of setting up the actual device how I want it.

#### OxygenOS

* <https://www.oneplus.com/uk/oxygenos>

This is the default for the OnePlus device I have, which means it's the most likely to make the hardware perform at its best.

After a wobble on data reporting (which I'm not too bothered about) they seem to have largely sorted out their privacy game... apart from being full of google services just like the rest of the mainstream android devices. To play or not to play...

#### LineageOS

* <https://lineageos.org/>

#### Replicant

* <https://replicant.us/>

#### `/e/` (aka Eelo)

* <https://en.wikipedia.org/wiki//e/_(operating_system)>
* <https://e.foundation/>
* <https://itsfoss.com/eelo-mobile-os/>

#### GrapheneOS

* <https://grapheneos.org/>

#### Calyxos

* <https://calyxos.org/>

## Todo

* Unlock bootloader (done)
* Flash custom recovery [Team Win Recovery Project TWRP](https://twrp.me/) - this let's you backup/restore/flash etc (done)
* Flash an OS (again)
* GET ROOT
* setup [adb](https://developer.android.com/studio/command-line/adb) access (always handy in case you kill the phone screen to be able to adb from a laptop)
* Backup/restore with titanium
* Restore google things with google backup (app installs, wallpaper, some settings, contacts)
* 2FA (already on the backup-able andOTP) (is it 2FA if you log in on your phone web browser using a 2FA app on the same phone??)
* Sync with syncthing (photos, rest of SD card)

## End... for now

That's as far as I've got today, I'll be editing this post as I progress with the install so do come and look again. Also suggestions and questions welcome.
