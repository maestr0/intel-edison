# intel-edison
 Some shell scripts for Intel Edison to controll a bluetooth speaker and Text To Speach with espeak

# Firmware update

Copy the latest Yocto on the USB drive on edison (must be FAT32 and Primary Partition)

on Edison run

`rebot ota`

wait 3 minutes for the flash process to complete

# Firmware update - alternative method

download image
reboot edison witn screen and break an autoboot process

run `run do_flash`

    boot > run do_flash
    Saving Environment to MMC...
    Writing to MMC(0)... done
    GADGET DRIVER: usb_dnl_dfu

from mac, run `sudo ./flashall.sh --keep-data` in the image dir

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

add these sources to the feeds (vi /etc/opkg/base-feeds.conf)

    src all     http://iotdk.intel.com/repos/1.1/iotdk/all
    src x86 http://iotdk.intel.com/repos/1.1/iotdk/x86
    src i586    http://iotdk.intel.com/repos/1.1/iotdk/i586
    src/gz all2    http://repo.opkg.net/edison/repo/all
    src/gz edison    http://repo.opkg.net/edison/repo/edison
    src/gz core2-32   http://repo.opkg.net/edison/repo/core2-32
    
then run
    
`opkg update`

`opkg install git`

`opkg install nano`

`opkg install htop`

`opkg install espeak`

`ssh-keygen -t rsa -b 4096 -C "raszewski@gmail.com"`

# Connect to a bluetooth speaker at startup

create a file in `/lib/systemd/system/bluetooth-speaker.service`


    [Unit]
    Description=Connects to Volcano2 bluetooth speaker
    
    [Service]
    Environment="Timeout=30"
    ExecStart=/home/root/git/intel-edison/bluetooth_speaker.sh
    WatchdogSec=30s
    Restart=on-failure
    StartLimitInterval=4min
    StartLimitBurst=4
    StartLimitAction=reboot-force
    
    [Install]
    WantedBy=basic.target

run `systemctl enable bluetooth-speaker`

  # set XDA daemon environmental variables
  
  `systemctl set-environment SLACK_TOKEN=XXXXX`
  
  `systemctl set-environment LOGGY_TOKEN=XXXXX`
 
add env vars there too

 `vi /lib/systemd/system/xdk-daemon.service`

 `systemctl show xdk-daemon`
