# intel-edison
 Some shell scripts for Intel Edison to controll a bluetooth speaker and Text To Speach with espeak

# Firmware update - alternative method

download image
reboot edison witn screen and break an autoboot process

run `run do_flash`

    boot > run do_flash
    Saving Environment to MMC...
    Writing to MMC(0)... done
    GADGET DRIVER: usb_dnl_dfu

from mac, run `sudo ./flashall.sh` in the image dir

    edison-image-ww25.5-15  sudo ./flashall.sh
    Password:
    Using U-Boot target: edison-blankcdc
    Now waiting for dfu device 8087:0a99
    Please plug and reboot the board
    dfu-util: Device has DFU interface, but has no DFU functional descriptor
    Flashing IFWI
    dfu-util: Device has DFU interface, but has no DFU functional descriptor
    Copying data from PC to DFU device
    Flashing U-Boot
    Copying data from PC to DFU device
    Flashing U-Boot Environment
    Copying data from PC to DFU device
    Flashing U-Boot Environment Backup
    Download	[=========================] 100%        65536 bytes
    Rebooting to apply partition changes
    Now waiting for dfu device 8087:0a99
    dfu-util: Device has DFU interface, but has no DFU functional descriptor
    Flashing boot partition (kernel)
    Flashing rootfs, (it can take up to 5 minutes... Please be patient)
    Copying data from PC to DFU device
    Rebooting
    U-boot & Kernel System Flash Success...
    Your board needs to reboot to complete the flashing procedure, please do not unplug it for 2 minutes.
    
    

#  install GIT

add this repo to the feeds (vi /etc/opkg/base-feeds.conf)

    src all     http://iotdk.intel.com/repos/1.1/iotdk/all
    src x86 http://iotdk.intel.com/repos/1.1/iotdk/x86
    src i586    http://iotdk.intel.com/repos/1.1/iotdk/i586
    
then run
    
`opkg update`

`opkg install git`

`ssh-keygen -t rsa -b 4096 -C "raszewski@gmail.com"`

