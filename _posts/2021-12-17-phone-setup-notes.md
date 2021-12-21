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

#### Root and backups

One of the big drivers I've had for getting a non-standard phone setup is that I don't want to rely on on google to backup everything on my phone in case it dies, but because Android is by default locked in by secure boot and doesn't give the user any root access or ability to get root access that's a bit of a problem for the normal method of backing up a device.

A laptop backup is a question of backing up `/home` plus a [dotmatrix/bootstrap](https://github.com/timabell/dotmatrix) setup for regaining interesting configuration etc.

Android is a bit more complex because it has a couple of storage areas:

* an [emulated] 'sdcard' this is kinda like `/home` on a laptop and has things like downloaded files; some of the apps use this to save things to
* storage for every individual app (I learned about the existence of this by losing all my app data)

Every app on android runs under a separate userId, which allows Android to ensure that apps can't read each other's data. This is a good thing for security, but that means if you install a "backup app" it can't read any of the data you actually want backed up. And it can't get root because that's not available to you as a user or to any non-system apps.

So that means to backup independently of google, you need root, and to get root you need to unlock the whole boot chain.

I did have root on my OnePlus 5t, but an operating system update helpfully removed that for me... breaking my backups... and root access couldn't be restored without wiping the phone... including the data I didn't have backed up because it had broken my backups. Gah. Off the back of that experience I want to make sure that I'm not set up to fight some bloody vendor that doesn't believe I should have root.

### Something other than iOS or Android and its derivatives?

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

Two currently active non-android physical phone projects, and several more ongoing Linux based (i.e. non-android) mobile-friendly operating system efforts. Although these will never cross the radar of most people just like Linux didn't for many years) these are important foundational projects.

##### Purism's Librem 5 phone hardware running PureOS (Linux)

* [Librem 5 phone](https://shop.puri.sm/shop/librem-5/)
* [PureOS](https://pureos.net/)

The [Librem 5](https://shop.puri.sm/shop/librem-5/) is worth a look if you want to take it to the next level of openness, however it comes with a compromise in specifications, a hefty price tag (inevitable due to lower production volumes) and no android / iOS apps.

You might however want to consider spending your dollars as a vote for the future you want to see.

The [Librem 5 runs Linux (PureOS), not Android](https://puri.sm/products/librem-5/pureos-mobile/). This is great but as of 2021 does mean it suffers from the "app" problem (see above).

Because of the "app" problem I'm not ready to make the jump to a Linux based smartphone that can't run android apps. I'm also not particularly keen to drop quite this much in specification for the benefit.

Personally I'm happy with the OnePlus compromise of specification plus apps versus openness for now, but I'm very glad to see Purism pushing the frontier of openness and maybe I'll join their users one day.

##### PinePhone Pro phone hardware (Linux, for now)

The [PinePhone Pro](https://www.pine64.org/pinephonepro/) is a low spec but very open Linux phone. A follow up to the original PinePhone.

"pre-orders from developers on October 15, 2021, and expect to have them delivered by December"

Phones like this are important in building momentum in the capability of non iOS/Android software even though they will never be mainstream phones themselves.

This is a Linux phone, though in theory [GloDroid](https://glodroid.github.io/) will provide a build of Android (AOSP) for it, but don't hold your breath. - [OmgUbuntu article on PinePhone+GloDroid](https://www.omgubuntu.co.uk/2020/07/glodroid-android-for-pinephone-allwinner).

##### UBPorts Ubuntu Phone (Linux)

Canonical killed the Ubuntu Phone and the [Ubuntu Touch](https://en.wikipedia.org/wiki/Ubuntu_Touch) operating system, but the software lives on in [ubports](https://ubports.com/). (Presumably that's short for UBuntu Ports)

##### Plasma (Linux KDE for phones)

[Plasma Mobile](https://plasma-mobile.org/) is a variant of the KDE Plamsa desktop specifically for mobiles.

Learn more about [Plasma on Wikipedia](https://en.wikipedia.org/wiki/Plasma_Mobile)

##### Mobian - (Debian Linux for phones)

[Mobian](https://mobian-project.org/) is encouraging to see. Debian Linux's strenth has always been its governance and stability. Debian has been a rock in the stormy seas of open source even as different people have passed through its team. This is because debian has a strong set of organisational rules that are above and beyond any individual contributor. The fact that they are working on a mobile variant is very encouraging.

##### PostmarketOS (Linux)

[PostmarketOS](https://postmarketos.org/) is an Alpine Linux (i.e. very small) variation designed to breath life into otherwise obsolete hardware. I expect this will become more useful as phone hardware stops becoming utterly obsolete due to major changes in basic expectations and environment. 

## Secure boot

There's the secure boot chain and device locking. This can be a good thing or a bad thing depending on the power dynamic between users and providers (and maybe even the state/government).

It is true that your device is less "secure" with the bootloader unlocked (as the phone likes to scream at you every time you boot it up), at least to attackers with physical access to your device, however I think that's worth the trade for full control of your device (that you paid for and "own").

[Security is not an absolute](https://www.isaca.org/resources/isaca-journal/issues/2021/volume-6/evidence-based-prioritization-of-cybersecurity-threats). You have to consider cost, inconvenience, human behaviour, the value of an attack target, the motivations of different actors (state, organised crime, hackers, opportunist thieves, trolling friends etc). For me an encrypted data partition and a passcode will do for physical security. In theory you can get full secure boot chain for custom operating systems but even on a Linux laptop this is non-trivial currently.

There's an important difference here between google/apple considering the security of their entire device eco-system in the hands of every kind of user, and the security of an individual's device customised to suit them. If google turn off secure boot for everyone then it makes it that much more likely that someone will successfully develop and spread an android virus that corrupts the boot chain. If I turn it of it's a rounding error on the probability, and a marginal difference to the "security" of my own device.

### Apple's secure boot chain

Apple don't want you to fiddle with the OS they control, so you don't get to touch it without "jailbreaking" it. Jailbreaking is done by exploiting a security flaw, and it's a cat and mouse game with Apple fixing bugs to close holes and hackers finding new ones to regain control of the devices. Not a game I want to play just to have control over my own hardware. This 100% rules out iOS for me, it's a complete dealbreaker. No matter how shiny, how bug free, how capable it is I wouldn't trade unless there was absolutely no alternative.

### Android's secure boot chain

Android also secure their boot chain by default, however whether you can unlock it and flash a different recovery/bootloader/OS/ROM depends on the phone manufacturer, individual device, and sometimes the phone network provider (aka locking/unlocking).

This means choose your device and provider carefully if you wish to unlock without wasting your time trying to jailbreaking a locked device.

### Artificial app limitations when unlocked

Android has a system that allows apps to hide or limit functionality called [SafetyNet](https://www.lineageos.org/Safetynet/). For apps like NetFlix that won't even show in the play store for unlocked phones we're into the mega-discussion that is [DRM](https://en.wikipedia.org/wiki/Digital_rights_management). In short if a content creator wants to lock their device to a locked-down platform that's fine be me but I won't be using those platforms for my main computing, instead I might have them as throw-away additional appliances like the google chromecast, or samsung TV's built in junk. What really matters here is what alternatives you have available to you. For google pay, I'm very slightly sad to miss out but my contactless debit card still works fine so I'll live.

## Hardware choices

Given the "app" problem, any devices not capable of running Android or a derivative are currently out of the running (sad times).

A non-negotiable for me is manufacturer support for replacing the bootloader and everything above that (OS, apps). This ensures the life of the device beyond the point at which the manufacturer loses interest or does something horrific/stupid. This is also a signal for who is truly in charge of the device once it's "yours" - you the user or the supplier and their developers. By locking you out of making modifications it's a clear signal that you are not to be trusted with the power over your own device.

As the useful innovation in hardware slows down (2G to 3G was a big jump, but 8-megapixels camera to 32-megapixel cameras is less foundational) it will be less often that devices will become obsolete through huge leaps in capability. It will also mean that phone hardware will inevitably become more commodity and less proprietary, giving a chance for more open standards to get a foothold (just as x86 replace proprietary CPU architectures many decades ago), while still being acceptably capable. We shouldn't be throwing out devices because the manufacturer decided not to provide security patches for their OS variant, and certainly not because the manufacturer took away a feature we like through forced updates.

### Google Nexus / Pixel (meh)

I have run a [google nexus](https://en.wikipedia.org/wiki/Google_phone) 4 previously which was flashable and rootable, but long since obsolete in hardware capabilities (and suffered a hardware failure). I never looked back at the google line after I discovered OnePlus, I can't comment on whether the current pixel phones are a good device for my constraints. I don't particularly want to further feed the beast. If you want the authentic pure google experience I guess these are probably worth a look but the pure google experience seems less and less appealing as the years roll on.

### Sony (yuck)

Someone told me that a particular Sony phone was flashable, I researched it, found instructions on flashing it, ordered one... and couldn't flash it. Discussing with Sony support it transpired that that precise model was sometimes flashable and sometimes not, and the only way to find out was to order one and look at the serial number. Fuck you Sony. They never have understood the open source movement and look like they still don't. They always treated their kit like appliances not a blend of hardware and software (or firmware) with everything that means for the long term management of the software. It's a shame because they do make nice hardware. I'd still buy a dumb Sony audio amplifier but not much else of theirs. Returned and refunded, try again...

### OnePlus (yay, no wait, boo)

This is my choice for the new [OnePlus 9 Pro](https://www.oneplus.com/uk/9-pro) I'm trying to set up, and the [OnePlus 5T](https://www.oneplus.com/uk/support/spec/oneplus-5t) I've been using for more than a couple of years now.

They don't make the grade for the pure "everything must be open including chip bytecode and chip architecture" as they use proprietary chips, but they make the right balance for me of reasonably high spec hardware for a reasonable price, android compatibility, and the ability to flash whatever ROM/OS you like (at your own risk).

I've been running a OnePlus 5t for a while now (bought outright, no network lockin or contract nonsense) and generally happy enough with it. There are some bugs and storage is starting to constrain hence the upgrade, plus the camera could be better by modern standards and I don't fancy carrying a separate camera.

I now have had the OnePlus 9 Pro sat in a drawer for two months waiting for me to figure out what-the-[FSM](https://en.wikipedia.org/wiki/Flying_Spaghetti_Monster) to run on it, hence this blog post. It's already been unlocked and I've tried flashing a couple of things but am not happy with the setup yet. I stopped looking at it while I concentrated all my efforts on making sure my business was going in the right direction (or any direction at all).

> To get root you have to wipe the phone

The OnePlus comes with OxygenOS (an android derivative) preinstalled, but not rooted and with a locked bootloader. To get root you have to wipe the phone which means it's important to do it before you start using it. It's caused me no end of pain that you can't use [titanium backup](https://www.titaniumtrack.com/titanium-backup.html) to backup all your data without root, and you can't get root without losing your files. I understand why (so you can't just unlock a phone to steal all the data) but that doesn't make it less of a pain in the arse. Bonus points for operating system updates (over the air / OTA or just normal updates) de-root the phone.

[XDA Developers detailed page on the OnePlus 9 including pro](https://www.xda-developers.com/oneplus-9/)

---

But wait, there's trouble in paradise.

The founder [Carl Pei left OnePlus in 2020](https://techcrunch.com/2020/10/16/oneplus-co-founder-carl-pei-confirms-he-has-left-the-company/) after 7 years at the company.

[OnePlus was funded by an existing phone company called Oppo](https://www.androidauthority.com/oneplus-oppo-design-894687/). (And [both OnePlus and Oppo are part of BBK](https://www.androidauthority.com/oneplus-oppo-1177898/))

It seems that [OnePlus is basically now dead in the water](https://www.androidauthority.com/oneplus-oppo-complete-opinion-3025477/) as a brand if not a company in its own right and will be sucked back into whatever the mothership has to offer, breaking everything along the way by trying to merge Oppo's colorOS with OnePlus's OxygenOS into an unholy mess.

Fuck.

---

As if that wasn't enough:

> "OnePlus is adding artificial limitations and breaking features via software updates, and there are no indications that they'll improve." ~ GCam Hub, <https://www.celsoazevedo.com/files/android/google-camera/f/post-05/>

## So what OS options does that leave?

So not iOS and preferably not Android either.

It's worth mentioning that some (most/all?) phone manufacturers make customizations to Android or even complete [forks](https://en.wikipedia.org/wiki/Fork_(software_development)) that you may or may not want.

* Samsung (for the Galaxy line of phones) replaces the "launcher" with the ["Samsung Experience"](https://en.wikipedia.org/wiki/Samsung_Experience)
* OnePlus of Shenzhen ship their phones with [OxygenOS](https://www.oneplus.com/uk/oxygenos), this is as I understand it a customization (fork if you will) of Android. [More about OxygenOS on Wikipedia](https://en.wikipedia.org/wiki/OxygenOS)

### Researching the options

I don't follow this stuff all the time so I had to do some googling ([duckduckgo](https://duckduckgo.com/)-ing). Here's some useful comparisons I turned up:

* [It's FOSS, Open Source Mobile OS Alternatives To Android](https://itsfoss.com/open-source-alternatives-android/) - mostly pure Linux things that don't have the android app ecosystem
* [PC Magazine, Break Away From Android: 7 Free Open-Source Mobile OSes to Try](https://uk.pcmag.com/linux/131295/break-away-from-android-7-free-open-source-mobile-oses-to-try)
* [GetDroidTips has some more ROMs I haven't looked at](https://www.getdroidtips.com/best-custom-rom-oneplus-9-pro/)

I've got more to learn/research here so I'll expand this section as and when I learn more. Think of this as a [bliki](https://www.webopedia.com/definitions/bliki/). There's a full history in git (link at end).

### Android derivative options

I now need to look into the below and decide what to run (maybe with some trial flashing). Once that's done it'll be on to the slog of setting up the actual device how I want it.

#### OxygenOS from OnePlus - used to be good, now dying a painful death

See the section on OnePlus hardware above. The company and OS are in trouble now the founder has left and the operating system has been merged with Oppo's colorOS (read "fucked")

* <https://www.oneplus.com/uk/oxygenos>

This is the default for the OnePlus device I have, which means it's the most likely to make the hardware perform at its best.

After a [wobble on data reporting](https://www.theverge.com/circuitbreaker/2017/10/11/16457954/oneplus-phones-collecting-sensitive-data) (which I'm not too bothered about) they seem to have largely sorted out their privacy game... apart from being full of google services just like the rest of the mainstream android devices. To play or not to play...

Here's [the original article disclosing OnePlus silently sending data home](https://www.chrisdcmoore.co.uk/post/oneplus-analytics/).

It seems the latest news is that Oxygen is falling apart. [XDA Developers: "OxygenOS 12 for the OnePlus 9 series is littered with bugs"](https://www.xda-developers.com/oneplus-9-oxygenos-12-stable-update-bugs/)

> "It was shit after merge with #Oppo and getting worst day by day. I really like #OnePlus device but #OxygenOS is dead now." ~ [@rahulawanjari, 9 Dec 2021, twitter](https://twitter.com/rahulawanjari/status/1468885793691168771?s=20)

Crap, there goes another good option. As if the mobile phone space wasn't horrific enough already.

In fact OxygenOS 12 was so bad, that they've just [OnePlus pulled the plug on the entire OxygenOS 12 upgrade!!](https://www.androidpolice.com/oneplus-is-pulling-its-oxygenos-12-update-for-the-op-9-and-9-pro/)

Bonus points for the anti-competitive practice of [actively denying access to hardware features (secondary cameras)](https://www.gizmochina.com/2021/12/13/oxygenos-12-blocks-access-to-auxiliary-cameras-on-third-party-camera-apps/). I hope the courts slap them down for this clearly anti-competitive behaviour.

---

So after discovering that shit-show-in-paradise from OnePlus I could potentially skip OxygenOS 12 and stick to the less f*cked OxygenOS 11, but that doesn't seem like much of a plan so it looks like I'll be skipping any fancy hardware capability and looking for a more open and less broken Android variant. Yet more proof that corporations can't be trusted as guardians of our software for the long term without GPL or at least MIT to stop them from hurting their users sooner or later. Did I mention my podcast is called "Software Should Be Free". Does this horror show give you a hint as to why it's called that?

#### LineageOS (yep)

[LineageOS](https://lineageos.org/) is the successor to the now defunct CyanogenMod. [See the history of LineageOS and it's relationship to CyanogenMod here on Wikipedia](https://en.wikipedia.org/wiki/LineageOS).

CyanogenMod was a bastian of freedom and innovation. I hope Lineage has managed to continue that.

There does appear to be [a build of LineageOS for the OnePlus 9 pro](https://download.lineageos.org/lemonadep) - I think this is worth trying out.

LineageOS has it's own recovery image, so no need to run TWRP as well.

[Review of LineageOS on XDA Developers](https://www.xda-developers.com/lineageos-18-1-review/)

#### Replicant (not yet)

"[Replicant](https://replicant.us/) is a fully free Android distribution running on several devices"
I'm glad this freedom is here but I'm not quite ready to give up every last proprietary thing until there's a bit less of a gap.

[Supported devices](https://redmine.replicant.us/projects/replicant/wiki#Supported-devices) shows purely Samsung Galaxy devices currently.

#### /e/ (aka Eelo) (nope)

What a bizarre name! Good luck googling this.

> "We build desirable, open source, privacy-enabled smartphone operating systems."

This Android derivative is focussed on privacy; eliminating as much data collection as possible. Laudable but not my main focus right now.

* [Main site: e.foundation](https://e.foundation/)
* [/e/ on wikipedia](https://en.wikipedia.org/wiki//e/_(operating_system))
* [itsfoss.com/eelo-mobile-os](https://itsfoss.com/eelo-mobile-os/)

#### GrapheneOS (nope)

> "[GrapheneOS](https://grapheneos.org/) - The private and secure mobile operating system with Android app compatibility. Developed as a non-profit open source project."

[GrapheneOS only officially supports Pixel phones](https://grapheneos.org/faq#supported-devices)

#### CalyxOS (nope)

> [CalyxOX](https://calyxos.org/) - "Your Phone Should Be Private Everyone needs a phone. Not everyone wants to be spied on. Reclaim your privacy with CalyxOS."

Supports Pixel devices and one Xiaomi phone (never heard of it).

Seems to be pushing Signal and Tor so is super-privacy focussed.

## Recovery images

### TWRP (great but not needed)

Previously I've used TWRP, and I got as far as flashing it before discovering [Lineage has it's own recovery image](https://www.xda-developers.com/lineageos-18-1-review/)
* Unlock bootloader <https://www.getdroidtips.com/oneplus-9-pro-unlock-bootloader/>
* Download TWRP for lemonadep <https://twrp.me/oneplus/oneplus9pro.html> - [3.6 twrp download for lemonadep](https://eu.dl.twrp.me/lemonadep/twrp-3.6.0_11-0-lemonadep.img.html)
* Get twrp public gpg/pgp public key to be able to verify `.asc` files <https://twrp.me/faq/pgpkeys.html>
* Flash TWRP (TeamWin Recovery Project?) <https://twrp.me/>
	* Power off the phone
	* Hold down volume-down and power buttons
	* Select english
	* select reboot to fastboot
	* connect the usb cable (usb-c to usb-c doesn't work on my dell xps, use the bigger usb 3 A to usb-c cable)
	* run `fastboot devices` on the laptop (connected over usb), you should see your phone listed
	* boot the phone from the local twrp image `fastboot boot twrp-3.6.0_11-0-lemonadep.img`, phone boots up into twrp gui
	* advanced > flash current twrp
	* there's a note about bootloops, but the options isn't there so skipping that
	* reboot > power off (says current slot: A, just for the record)
	* power on with volume-down held again, boots straight to twrp this time

### LineageOS's recovery image

Came across this here, need to investigate further: <https://www.xda-developers.com/lineageos-18-1-review/>

## Installing LineageOS on OnePlus 9 Pro

It begins. [LineageOS](https://lineageos.org/).

The oneplus 9 pro device is codename `lemonadep`.

Useful howtos:

* [LineageOS official installation wiki page for OnePlus 9 pro lemonadep](https://wiki.lineageos.org/devices/lemonadep/install)
* [How-To Geek: How to Install LineageOS on Android](https://www.howtogeek.com/348545/how-to-install-lineageos-on-android/)
* [Android Authority: Beginner’s guide to installing LineageOS on your Android device](https://www.androidauthority.com/lineageos-install-guide-893303/) - lots more context and screenshots
* [LineageOSROMS (unofficial)](https://lineageosroms.com/install-lineageos/) - a very short 8 step guide
	* [LineageOSROMS (unofficial) full guide](https://lineageosroms.com/lemonadep/)
* [GetDroidTips](https://www.getdroidtips.com/lineage-os-18-1-oneplus-9-9-pro/) - not sure there's much extra useful here
* 

[XDADevelopers coverage of Lineage support for OnePlus 9 pro](https://www.xda-developers.com/lineageos-18-builds-oneplus-9-pro-razer-phone-2-lenovo-p2/)

The steps:

* Download latest nightly (there's no stable/unstable on this): <https://download.lineageos.org/lemonadep> - this has both the ROM (OS image) and the recovery image.
* Download copy-partitions <https://androidfilehost.com/?fid=2188818919693768129> (as per wiki)
	* The sha256 for the copy I have is `200877dfd0869a0e628955b807705765a91e34dff3bfeca9f828e916346aa85f  copy-partitions-20210323_1922.zip`
* Verify all the sha256 sums: `sha256sum -c *.sha256`
* Boot to fastboot
* flash the lineage recovery:
	```
	tim@max:~/Downloads/oneplus9pro/LineageOS
	$ fastboot flash boot lineage-18.1-20211214-recovery-lemonadep.img
	Sending 'boot_a' (196608 KB)                       OKAY [  6.113s]
	Writing 'boot_a'                                   OKAY [  0.655s]
	Finished. Total time: 6.985s
	```
* copy partitions as instructed
	* boot into recovery (vol-down + power)
	* "apply update" > "apply from adb" (aka sideload)
	* `adb sideload copy-partitions-20210323_1922.zip`
	* Ignore unknown sig and "continue"
* wipe
	* boot into recovery (vol-down + power) if not already in it
	* "format data / factory reset"
* OS install
	* boot into recovery (vol-down + power) if not already in it
	* "apply update" > "apply from adb" (aka sideload)
		```
		tim@max:~/Downloads/oneplus9pro/LineageOS
		$ adb sideload lineage-18.1-20211214-nightly-lemonadep-signed.zip
		serving: 'lineage-18.1-20211214-nightly-lemonadep-signed.zip'  (~47%)
		    adb: failed to read command: Success
		```
		apparently this is normal, but the failed to flash error on the phone is not, and rebooting drops me back into the existing Oxygen install. Dammit.... Try again
	* Second attempt ran fine
    	* step 1/2
		* step 2/2
		* then recovery logo comes back up and it just sits there
		* volume up to the back arrow at the top, power to press it
		* *then* it says "install complete with status 0" (zero being unix-speak for no-issues)
		* but it doesn't ever get past the lineage logo when booting, maybe because of the boot of oxygen. hmm
		* [hard-power-off](https://www.youtube.com/watch?v=y2yB2dRrXiA) by holding down volume-up and power button
	* take 3,
		* back to recovery
		* re-wipe (factory reset)
		* reboot
		* this time it booted... briefly
		* it got to setup screen, then before I did anything rebooted into some kind of recovery failsafe and prompted to factory reset again, which I did. This time it rebooted and stayed up while I zipped through the wizard.
* go take a look - ignore the warning about doing gapps etc first just so we can see what vanilla Lineage looks like. We can always wipe & reflash
	* wonderfully empty app list!
	* basic main camera & selfie cam works
	* flashlight works
	* odd android verify notification, didn't seem to work
	* top shelf only available on lockscreen, odd
	* no sim yet and wifi not connected yet, so not much else to test
	* vol-down + power still takes screenshots

## Connect adb, see if we get root shell

<https://developer.android.com/studio/command-line/adb#Enabling>

* On the phone enable adb
	* settings > about phone > tap "build number" repeatedly
	* settings > system > advanced (grrrr) > developer options > usb debugging [on]
	* settings > system > advanced (grrrr) > developer options > rooted debugging [on]
	* connect usb cable to laptop
	* phone prompts "Allow USB Debugging?"
		* tick "always allow"
		* press "allow"
* On the laptop `adb devices` should now show the phone

Success with non-root:
```
$ adb shell
OnePlus9Pro:/ $ ^D
```

Root denied without flipping the "rooted" option:
```
$ adb root 
ADB Root access is disabled by system setting - enable in Settings -> System -> Developer options
```
After enabling rooted debugging as above:
```
$ adb root  
restarting adbd as root
$ adb shell
OnePlus9Pro:/ # whoami
root
```


## Getting root back

### Grumble

It really annoys me that on a laptop this isn't even a step, yet on Android this is a whole additional drama. But I may have already mentioned that. Understanding the reasons doesn't mean I have to like it.

### adb root shell

According to <https://www.xda-developers.com/lineageos-dropping-superuser-addonsu-implementation-favor-magisk-manager/> adb root shell is the official LineageOS way of getting root access to "mess with important files".

```
$ adb root  
restarting adbd as root
$ adb shell
OnePlus9Pro:/ # whoami
root
```
Worth knowing but not much help for running titanium backup as root.

### Magisk

According to <https://www.xda-developers.com/lineageos-dropping-superuser-addonsu-implementation-favor-magisk-manager/> Magisk is the only real option now. I guess SuperSU still works but lacks the masking that allows you to fool android pay etc.

#### ⚠️ Beware of fake Magisk sites !! ⚠️

Github is the official home for Magisk and it's downloads: <https://github.com/topjohnwu/Magisk>

[**Beware of clone sites**](https://www.xda-developers.com/psa-magiskmanager-com-not-official-website-magisk/amp/) especially ones offering downloads.  `MagiskManager.com` is not legit or authorised and may host malware at some point. I've seen a few others too. They look like SEO optimised clones that could potentially be feeding some or all visitors malware.

It's worth being extra-careful with things like recovery images and rooters because by definition they have full control of your device, malicious or malign.

#### Magisk root install

LineageOS said not to boot before doing installing GApps, I'm not sure if that applies to Magisk too. I already have booted up. Not sure if a factory reset plus wipe will be enough or whether the image will have to be reflashed. I'll try with just an install, if that doesn't work I'll try the reset and see what happens, and if *that* doesn't work I'll try a full reinstall.

* Look at readme at <https://github.com/topjohnwu/Magisk>
* Follow instructions <https://topjohnwu.github.io/Magisk/install.html>
* Download latest release <https://github.com/topjohnwu/Magisk/releases/latest>
* install the app with adb (with the phone on, and booted to LineageOS as per normal use)
	* <https://www.droidviews.com/install-apk-files-using-adb-commands/>
	```
	$ adb install Magisk-v23.0.apk 
	Performing Streamed Install
	Success
	```
	* On the phone, swipe up for the full app list (drawer), and there is a Magisk icon!

##### Getting boot.img

The instructions for Magisk just say you need `boot.img`, leaving know clues how to get it.

It turns out it's embedded in the Lineage system image `lineage-18.1-20211214-nightly-lemonadep-signed.zip` that we've already downloaded.

Extract the `payload.bin` file from the `lineage-18.1-20211214-nightly-lemonadep-signed.zip` to the same folder as the python script.

Some instructions on using python to extract the boot image: <https://forum.xda-developers.com/t/guide-how-to-extract-payload-bin-from-ota.3830962/> (ignore the file it's older than the github one)

The `payload_dumper` file appears to be from <https://github.com/vm03/payload_dumper> assuming my googling is accurate.

I didn't need to do the pip install.

I did change the python to python3 at the top of the py file and make it executable.

```
tim@max:~/Downloads/oneplus9pro/payload_dumper
$ ./payload_dumper.py payload.bin 
boot
dtbo
odm
product
system
system_ext
vbmeta
vbmeta_system
vendor
vendor_boot
tim@max:~/Downloads/oneplus9pro/payload_dumper
$ ll output 
total 5.6G
-rw-rw-r-- 1 tim tim 192M Dec 20 23:20 boot.img
-rw-rw-r-- 1 tim tim  24M Dec 20 23:20 dtbo.img
-rw-rw-r-- 1 tim tim 2.8M Dec 20 23:20 odm.img
-rw-rw-r-- 1 tim tim 1.3G Dec 20 23:21 product.img
-rw-rw-r-- 1 tim tim 267M Dec 20 23:21 system_ext.img
-rw-rw-r-- 1 tim tim 2.5G Dec 20 23:21 system.img
-rw-rw-r-- 1 tim tim 8.0K Dec 20 23:21 vbmeta.img
-rw-rw-r-- 1 tim tim 4.0K Dec 20 23:21 vbmeta_system.img
-rw-rw-r-- 1 tim tim 192M Dec 20 23:22 vendor_boot.img
-rw-rw-r-- 1 tim tim 1.3G Dec 20 23:22 vendor.img
```

Hurrah, now we have a `boot.img` to give to Magisk.

##### Magisk rooting

Copy the `boot.img` across:

```
tim@max:~/Downloads/oneplus9pro/payload_dumper
$ adb push output/boot.img /sdcard/ 
output/boot.img: 1 file pushed, 0 skipped. 177.5 MB/s (201326592 bytes in 1.082s)
```

* Press install on the Magisk app.
* "Select and Patch a File"
* hamburger in file browser > "OnePlus 9 Pro" (obviously, duh) > `boot.img`
* "let's go ->"
* Magisk shows steps then" output file is written to..." and a path to download folder

```
tim@max:~/Downloads/oneplus9pro/payload_dumper
$ adb shell
OnePlus9Pro:/ # ls -lh /sdcard/Download/
total 96M
-rwx------ 1 u0_a163 u0_a163 192M 2021-12-14 13:21 magisk_patched-23000_BYMDt.img
```

* pull the file back to the laptop `adb pull /sdcard/Download/magisk_patched-23000_BYMDt.img`
* Now flash the file to the phone:
	* (the vol-up + power didn't work for me, just did a normal boot, vol-down + power is reccovery not fastboot)
	* Settings > system > advanced (ffs) > gestures (wtf?) > power menu > advanced restart [on]
	* power button (hold) > power > restart > fastboot

```
tim@max:~/Downloads/oneplus9pro/payload_dumper
$ fastboot flash boot magisk_patched-23000_BYMDt.img 
Sending 'boot_b' (196608 KB)                       OKAY [  6.035s]
Writing 'boot_b'                                   OKAY [  0.639s]
Finished. Total time: 6.853s
```

* power off
* power on
* open up the Magisk app - it shows installed version number now, hurrah

Using Magisk:

* Click the cog (top right) to optionally turn on "MagiskHide"
* Along the bottom are four icons
	* Home
	* Shield - shows root requests
	* bug - shows logs
	* jigsaw piece - shows modules, activate, deactivate & install

## Customisations

* Turn on all the power button options:
	* Settings > system > advanced (ffs) > gestures (wtf?) > power menu > advanced restart [on]

## Todo

* setup [adb](https://developer.android.com/studio/command-line/adb) access (always handy in case you kill the phone screen to be able to adb from a laptop)
* Backup/restore with titanium
* Restore google things with google backup (app installs, wallpaper, some settings, contacts)
	* GApps <https://wiki.lineageos.org/gapps>
* 2FA (already on the backup-able andOTP) (is it 2FA if you log in on your phone web browser using a 2FA app on the same phone??)
* Sync with syncthing (photos, rest of SD card)
* better camera support? <https://www.xda-developers.com/google-camera-port-hub/>
* see if android pay etc will work with magisk magic mask pretending we haven't unlocked anything

## End... for now

That's as far as I've got so far. I'll be editing this post as I progress with the install so do come and look again. Also suggestions and questions welcome.

I really do hope one day I can de-google my phone just like I de-microsofted my laptop, but today is not that day for me.
