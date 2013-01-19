Raspberry-EthernetLogger
========================

Project with a Raspberry Pi to create an Ethernet LOgger & NEtwork Toolbox (ELONET)

There is nothing working right now, this is only an Idea for now 
WORK IN PROGRESS...

## Description of the Project
The idea is to create a cheap (less than 100$) but powerfull networking toolbox that can be put in any distant site for debuging.
It will be based on a Raspberry Pi and (optionaly) powered by PoE, 802.1af standard (very common in profressionnal network)
There will be 2 ethernet :
* The one included will in the Rasperry PI will be for capturing traffic (doing Tcpdump or ?)
* A second ethernet provided by an "USB to Ethernet adaptater" will be used for admin (with web interface ?) 



## Hardware Stuff 
### Card :
* A Raspberry PI (I bought a rev B - 512 Mo)
* A case for the Raspberry (optionnal) I bought one on Ebay (3e + 3e for shipping) but taking one on RS site seems to be a better deal (arround 6e but shipping price is covered with the Raspberry Pi card) 
* An USB to Ethernet adapater (/!\ This is not easy to find one cheap and running... For now I'm trying the official from Apple bought on leboncoin.Fr for 12e

### Power :
* PoE extractor Trendnet TPE-114GS, that should be set to 5v,
* A 2mm jumper to micro usb converter : I found one for 1,5$ (shipping included !)
* A power supply with micro usb 

### Screen (maybe in the future...)
A LCD screen shoul be helpfull to check the status of the board... maybe further a minimal LCD for putting Time ; IP adress ; Disk Size left (like this : http://learn.adafruit.com/drive-a-16x2-lcd-directly-with-a-raspberry-pi/overview)
For 80$ you can get a LCD touchscreen like the ΜLCD-32PTU from 4D Systems ... but it will to be a cheap system !



## Software Architecture
It is based on Raspbian Wheezy for now maybe it will be a Debian wheezy Arm further...


### Folder :
Configuration files names finished by .txt in order to be easy configured by everyone (plugin the SD card on Windows for example)
   
    /elonet/ : specific folder for the configuration of the application, if someone has to modify something it's here
        |-> ip_configuration.txt : contain the IP configuration for admin
        |-> client_name.txt : contain the name of the client that will prefix capture name
        |-> ntp_server.txt : if set it will configure the NTP server to contact
        |-> captures/ : folder that contains captures
        
        
      
