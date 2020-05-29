---
title: Manjaro- Airtel dongle setup
published: true
date: 2020-05-28
tags: [news]
---

## Recipe
- Make sure that the dongle works fine on a Windows computer. Upgrade firmware using the autorun program if possible.
- Start the computer and login.
- Install `modem-manager-gui`.
- Insert the data / internet dongle. 
    - Wait for it to mount. You may see an autorun prompt - ignore it.
- Run `sudo bash /run/media/USERNAME/airtel/Linux/install` (Assuming that the dongle is mounted at `/run/media/USERNAME/airtel`).
    - You will see erroneous output such as the one "Install script output" appended below. Just keep pressing enter and finish it.
- Run `modem-manager-gui`. In the GUI, you will see the dongle show up.
    - There, create a new connection if one does not exist already. Make sure that username and password fields are empty (this gets autopopulated to admin repeatedly - no problem), APN: airtelgprs.com , disable all those security protocols (possibly doesn't matter).
    - Then, click on `Activate connection` button. Wait to see the `success` message there.
- You should now be able to browse the internet. 


## Appendix
### Install script output
```
$ sudo bash /run/media/USERNAME/airtel/Linux/install
Installed version: 23.015.02.11.284
Installing version: 23.015.02.11.284

The software is exist. Do you want overwrite it? ([Y]/N):

Local path is: /usr/local/airtel

Installing airtel...
old path =/usr/local/airtel/driver
modprobe: FATAL: Module option is in use.
DRIVER COPY START
STA_PATH_FLAG=.
STA_PATH_FULL=/usr/local/airtel/driver/install
START_PATH_DRIVER=/usr/local/airtel/driver
CURRENT install from ./driver/install
INSTALL_PATH=/usr/local/airtel
DRIVER COPY END
have usb_modeswitch rules to HUAWEI DataCard: COUNT=0
4
ttyUSB%n COUNT=4
3-2:1.4 unbind and bind option
COUNT_END=3
3-2:1.3 unbind and bind option
COUNT_END=2
3-2:1.1 unbind and bind option
COUNT_END=1
3-2:1.0 unbind and bind option
COUNT_END=0
rmmod: ERROR: could not remove 'cdc_ether': No such file or directory
rmmod: ERROR: could not remove module cdc_ether: No such file or directory
rmmod: ERROR: could not remove 'usbnet': Resource temporarily unavailable
rmmod: ERROR: could not remove module usbnet: Resource temporarily unavailable
rmmod: ERROR: could not remove 'hw_cdc_driver': No such file or directory
rmmod: ERROR: could not remove module hw_cdc_driver: No such file or directory
make -C src/ clean
make[1]: Entering directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
rm -rf *.o *.ko *~ core* .dep* .*.d .*.cmd *.mod.c *.a *.s .*.flags .tmp_versions Module.symvers Modules.symvers *.order
/usr/local/airtel/driver/ndis_driver/ndis_src/src/add_header.sh  "clean" "/lib/modules/5.5.19-1-MANJARO/build/include/linux/usb"
rmmod -f hw_cdc_driver
rmmod: ERROR: could not remove 'hw_cdc_driver': No such file or directory
rmmod: ERROR: could not remove module hw_cdc_driver: No such file or directory
make[1]: *** [Makefile:39: clean] Error 1
make[1]: Leaving directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
make: *** [Makefile:30: clean] Error 2
make -C src/ modules
make[1]: Entering directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
#/usr/local/airtel/driver/ndis_driver/ndis_src/src/add_header.sh  "modules" "/lib/modules/5.5.19-1-MANJARO/build/include/linux/usb"
make -C /lib/modules/5.5.19-1-MANJARO/build SUBDIRS=/usr/local/airtel/driver/ndis_driver/ndis_src/src modules
make[2]: Entering directory '/usr/lib/modules/5.5.19-1-MANJARO/build'
make[2]: *** No rule to make target 'modules'.  Stop.
make[2]: Leaving directory '/usr/lib/modules/5.5.19-1-MANJARO/build'
make[1]: *** [Makefile:33: modules] Error 2
make[1]: Leaving directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
make: *** [Makefile:27: modules] Error 2
make -C src/ install
make[1]: Entering directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
#install -m 744 -c hw_cdc_driver.o /lib/modules/5.5.19-1-MANJARO/kernel/drivers/usb/net
#depmod -a
#modprobe hw_cdc_driver
/usr/local/airtel/driver/ndis_driver/ndis_src/src/add_header.sh  "install"
modprobe hw_cdc_driver
modprobe: FATAL: Module hw_cdc_driver not found in directory /lib/modules/5.5.19-1-MANJARO
make[1]: *** [Makefile:47: install] Error 1
make[1]: Leaving directory '/usr/local/airtel/driver/ndis_driver/ndis_src/src'
make: *** [Makefile:33: install] Error 2

Install NDIS driver failed.
The compiling environment is not all ready.
Please check gcc, make and kernel buid(/lib/modules/5.5.19-1-MANJARO/build) to be all installed?
Now please enter any key to finish other installations.
NDIS is disabled, and only Modem can be used.
USBSERIAL_TARGET_PATH =
ACM_TARGET_PATH =
AUTORUNPATH=/home/pradeepasimha/.config/autostart
AUTORUNPATH=/home/vvasuki/.config/autostart
AUTORUNPATH=/home/sanjeev/.config/autostart
AUTORUNPATH=/root/.config/autostart
qmi_wwan interface not exist,ok
ls: cannot access '/dev/cdc-wdm?': No such file or directory
cdc-wdm%n not exist,ok
                                                  [ done ]

Finished, press any key to exit
```