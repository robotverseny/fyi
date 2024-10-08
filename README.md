# fyi
Tudnivalók / For your information 

## Alapbeállítások / Default settings

|property <br /> tulajdonság | default <br/> alapértelmezett |
|---|---|
|`user@hostname` | `wheeltec@roboworks` <br />`wheeltec@192.168.0.100` |
|SSID | `wheeltec_robo_#` |
|Password <br /> Jelszó | `dongguan` |

## Akkumulátor / Battery

|status | volt |
|---|---|
|🟢 | 21.0 `V`- 25.0`V` |
|🟡 | 20.0`V`- 21.0`V` |
|🔴 | > 20.0 `V` |

![battery](etc/wheetec_battery01.png)

## Robot név és szín / Robot name and color

|`#` | color <br/> szín | english <br/> angol | hungarian <br/> magyar | robot name <br/> robot név |
|---|---|---|---|---|
|`01.` |<img src="etc/md_grey_900.svg"> | black | fekete | `robo_f` |
|`02.` |<img src="etc/md_grey_500.svg"> | grey | szürke | `robo_g` |
|`03.` |<img src="etc/md_grey_100.svg"> | white | fehér | `robo_w` |
|`04.` |<img src="etc/md_red_900.svg"> | dark red | bordó | `robo_d` |
|`05.` |<img src="etc/md_red_500.svg"> | red | piros | `robo_p` |
|`06.` |<img src="etc/md_orange_500.svg"> | orange | narancs | `robo_n` |
|`07.` |<img src="etc/md_yellow_100.svg"> | yellow | sárga | `robo_s` |
|`08.` |<img src="etc/md_brown_500.svg"> | brown | barna | `robo_b` |
|`09.` |<img src="etc/md_blue_900.svg"> | blue | kék | `robo_k` |
|`10.` |<img src="etc/md_purple_900.svg"> | purple | lila | `robo_l` |
|`11.` |<img src="etc/md_green_500.svg"> | green | zöld | `robo_z` |
|`12.` |<img src="etc/md_pink_100.svg"> | pink | rózsaszín | `robo_r` |
|`13.` |<img src="etc/md_brown_100.svg"> | beige | bézs | `robo_x` |


## `nmtui` / WiFi hotspot 

Network Manager Text User Interface

```yaml
Profile name: hotspot1
Device: wlan0
SSID: wheeltec_robo_#
Mode: Access Point
Security: WPA & WPA2 Personal
Password: dongguan
IPv4 address: 192.168.0.100/24
IPv4 gateway: 192.168.0.1
```

![](etc/nmtui01.png)


## VS code SSH

```powershell
PS C:\Users\he> ssh wheeltec@192.168.0.100 mkdir -p .ssh
wheeltec@192.168.0.100's password:

PS C:\Users\he> cat .ssh/id_rsa.pub | ssh wheeltec@192.168.0.100 'cat >> .ssh/authorized_keys'
wheeltec@192.168.0.100's password:

PS C:\Users\he> ssh wheeltec@192.168.0.100
```

## Links
- [material.io/resources/color](https://material.io/resources/color/#!/?view.left=0&view.right=0&primary.color=F44336)
- [materialui.co/colors](https://materialui.co/colors)
- [github.com/jkk-research/colors](https://github.com/jkk-research/colors/)

## License

![](https://raw.githubusercontent.com/jkk-research/ros1ros2/main/etc/cc0.svg)
