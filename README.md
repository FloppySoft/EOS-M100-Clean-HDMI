# EOS M100 Clean HDMI #

![Overview](/media/overview.png)

Archived clean HDMI & keep-awake script for the Canon EOS M100 as posted by user **srsa_4c** on a CHDK Forum [here](https://web.archive.org/web/20201121215630/https://chdk.setepontos.com/index.php?topic=13489.msg140429).

## Motivation ##

The Canon EOS M100 is a suitable entry level camera for vlogs, streams or as a better webcam. While Canon's [EOS Webcam Utitlity](https://web.archive.org/web/20201121220742/https://www.usa.canon.com/internet/portal/us/home/support/self-help-center/eos-webcam-utility/) is great but doesn't work with the EOS M100, there are [$9 (USD) HDMI grabbers](https://web.archive.org/web/20201121221155/https://www.ebay.com/itm/Video-Capture-Card-HDMI-USB-2-0-HD-1080P-for-Live-Streaming-Recorder-Grabber/363066218991) that allow you to utilize the EOS M100 as video camera live on a PC.


## Install Instructions ##

All steps are on your own risk. You need to know what you're doing.

I can only confirm it running with Firmware 1.0.1, so please don't update it if you really don't need to. Other fw versions are handled in the script, though - so it should run on other fw versions.

* Format your SD Card with your computer, must be FAT32.
* Download this repo as .zip file or clone it via git.
* Copy the two files from _src_ into the root folder of the SD card.
* Download and run [EOSCard](https://pel.hu/eoscard/). Mirror: [Archived Download](https://web.archive.org/web/20201121233717/https://pel.hu/down/EOScard.exe)
  * Check the _script_ option and click save. The SD card can run scripts now.
* Eject the SD card from your computer and insert it into the camera.
* **Do not power on your camera.**

## Running the Script ##

This needs to be done each time you power on the camera.

You can adjust your settings ahead of running the script, e.g. face-detection focus and switching the main mode dial to the video mode. The camera remembers all of that you you can set it up to some usable settings.

* **Do not use the power button to switch the camera on!**
* Camera must be off. Switch the mode switch to video.

1. Press _play_ (switches the camera on).
2. Press _set_ once.
3. Press _play_ to leave into the record mode.

Now your HDMI output should look clean and contain no overlays, not even the face detection box.

## Useful Accessories ##

* [$9 (USD) HDMI grabber](https://web.archive.org/web/20201121221155/https://www.ebay.com/itm/Video-Capture-Card-HDMI-USB-2-0-HD-1080P-for-Live-Streaming-Recorder-Grabber/363066218991) gives ~720p visual resolution despite claiming full HD
* [A DC Adapter](https://web.archive.org/save/https://www.amazon.com/dp/B073Z75LSF/) so you won't wear down your batteries
* A micro HDMI adapter or cable
* A ring light that can adapt a camera mount

## How to use the M100 as a webcam ##

Since most users will prefer windows, here is a simple workflow using OBS:
* Install the newest version of the [Open Broadcaster Software, OBS](https://obsproject.com/)
* The newest version already contains a virtual webcam, you don't need plugins
* Go to _File > Settings > Video_ and set both resolution parameters to your preference. If you want a 4:3 ratio webcam, use something like `1440x1080` (might also prevent your conference software from squeezing the video)
* Add a _Video Capture Device_ to your scene, select the HDMI grabber
  * go to it's settings (e.g. by double clicking it in the_Sources_ list)
  * Set _Buffering_ to disable
  * 


## Those HDMI grabbers aren't really Full HD ##

The suggested cheap HDMI grabbers claim to sample 1080p, but it rather looks like something around 720. Have a look at my example comparison, which is captured at 1080p desktop resolution and 1080p capturing resolution, original screenshot on the right:

![Resolution Comparison](/media/grabber-resolution.png)

The quality doesn't look that bad on real world camera footage, though. This is the reason why I would still recommend them for a budget setup, especially, if you're just using it as a webcam.

## Troubleshooting ##

I still see overlays
* This means the script did not start. See the other troubleshooting suggestions.

Script won't run

* Try to use eoscard multiple times
* Use another card, another size
* Make sure the SD card is FAT32-formatted (some small SD cards get auto-formatted to FAT)
* A user recommended to retract the kit lens, another suggested to disconnect the HDMI before running the script, deleting all images from the camera. I never needed these steps, though