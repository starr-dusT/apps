# Default Ports

This document documents the default ports used by Apps.
These defaults can of course be changed, but as we guarantee "sane, working defaults" they should provide no or minimal conflicts without being changed

## Core Apps

| App         |    Service   |   Port Name  |  Port | Protocol |                   Note                   |
|:------------|:------------:|:------------:|:-----:|:--------:|:----------------------------------------:|
| k8s-gateway |     main     |     main     |   53  |    UDP   |      Potential conflict with pihole      |
| traefik     |     main     |     main     |  9000 |   HTTP   | Potential conflict with minio (Official) |
| traefik     |      tcp     |      web     |  9080 |   HTTP   | Adviced to be moved to port 80           |
| traefik     |    metrics   |    metrics   |  9100 |   HTTP   |                                          |
| traefik     |      tcp     |   websecure  |  9443 |   HTTPS  |  Adviced to be moved to port 443         |
| prometheus  |     main     |     main     | 10086 |   HTTP   |                                          |
| prometheus  | alertmanager | alertmanager | 10087 |   HTTP   |                                          |
| prometheus  |    promop    |    promop    | 10089 |   HTTP   |                                          |
| prometheus  |    thanos    |    thanos    | 10901 |   HTTP   |                                          |

## Stable and Incubator Apps

| App                        |     Service     |    Port Name    |  Port | Protocol |                   Note                  |
|:---------------------------|:---------------:|:---------------:|:-----:|:--------:|:---------------------------------------:|
| amcrest2mqtt               |       main      |       main      |   -   |     -    |             Service disabled            |
| leaf2mqtt                  |       main      |       main      |   -   |     -    |             Service disabled            |
| promcord                   |       main      |       main      |   -   |     -    |             Service disabled            |
| protonmail-bridge          |       main      |       main      |   -   |     -    |             Service disabled            |
| speedtest-exporter         |       main      |       main      |   -   |     -    |             Service disabled            |
| unpackerr                  |       main      |       main      |   -   |     -    |             Service disabled            |
| unpoller                   |       main      |       main      |   -   |     -    |             Service disabled            |
| uptimerobot-prometheus     |       main      |       main      |   -   |     -    |             Service disabled            |
| protonmail-bridge          |       smtp      |       smtp      |   25  |    TCP   | Potential conflict with other smtp apps |
| anonaddy                   |       smtp      |       smtp      |   25  |    TCP   | Potential conflict with other smtp apps |
| pihole                     |     dns-tcp     |     dns-tcp     |   53  |    TCP   |   Potential conflict with k8s-gateway   |
| pihole                     |       dns       |       dns       |   53  |    UDP   |   Potential conflict with k8s-gateway   |
| openldap                   |       main      |       main      |  389  |    TCP   |                                         |
| openldap                   |      ldaps      |      ldaps      |  636  |    TCP   |                                         |
| kms                        |       main      |       main      |  1688 |    TCP   |                                         |
| freeradius                 |       main      |       main      |  1812 |    UDP   |                                         |
| freeradius                 |    accounting   |    accounting   |  1813 |    UDP   |                                         |
| node-red                   |       main      |       main      |  1880 |    TCP   |                                         |
| mosquitto                  |       main      |       main      |  1883 |    TCP   |                                         |
| owncast                    |       rtmp      |       rtmp      |  1935 |    TCP   |                                         |
| gitea                      |       ssh       |       ssh       |  2222 |    TCP   |                                         |
| photoprism                 |       main      |       main      |  2342 |    TCP   |                                         |
| valheim                    |     valheim     |    valheim-1    |  2456 |    UDP   |                                         |
| valheim                    |     valheim     |    valheim-2    |  2457 |    UDP   |                                         |
| valheim                    |     valheim     |    valheim-3    |  2458 |    UDP   |                                         |
| sqlitebrowser              |       main      |       main      |  3000 |    TCP   |                                         |
| uptime-kuma                |       main      |       main      |  3001 |    TCP   |                                         |
| vaultwarden                |        ws       |        ws       |  3012 |    TCP   |                                         |
| loki                       |       main      |       main      |  3100 |   HTTP   |                                         |
| jdownloader2               |       myjd      |       myjd      |  3129 |    TCP   |                                         |
| unifi                      |       stun      |     mstunain    |  3478 |    UDP   |                                         |
| logitech-media-server      |    playertcp    |   slimprototcp  |  3483 |    TCP   |                                         |
| logitech-media-server      |    playerudp    |   slimprotoudp  |  3483 |    UDP   |                                         |
| ombi                       |       main      |       main      |  3579 |    TCP   |                                         |
| navidrome                  |       main      |       main      |  4533 |    TCP   |                                         |
| appdaemon                  |       main      |       main      |  5050 |    TCP   |                                         |
| overseer                   |       main      |       main      |  5055 |    TCP   |                                         |
| nzbhydra                   |       main      |       main      |  5076 |    TCP   |                                         |
| lazylibrarian              |       main      |       main      |  5299 |    TCP   |                                         |
| esphome                    |       main      |       main      |  6052 |    TCP   |                                         |
| novnc                      |       main      |       main      |  6080 |    TCP   |                                         |
| bazarr                     |       main      |       main      |  6767 |    TCP   |                                         |
| unifi                      |    speedtest    |    speedtest    |  6789 |    TCP   |                                         |
| aria2                      |       main      |       main      |  6800 |    TCP   |                                         |
| qbittorrent                |     torrent     |     torrent     |  6881 |    TCP   |                                         |
| qbittorrent                |    torrentudp   |    torrentudp   |  6881 |    UDP   |                                         |
| aria2                      |      listen     |      listen     |  6888 |    TCP   |                                         |
| logitech-media-server      |       main      |       main      |  7000 |    TCP   |                                         |
| haste-server               |       main      |       main      |  7777 |    TCP   |                                         |
| nextcloud                  |       hpb       |       hpb       |  7867 |    TCP   |                                         |
| radarr                     |       main      |       main      |  7878 |    TCP   |                                         |
| omada-controller           |    main         |    main         |  8043 |    TCP   |                                         |
| odoo                       |       main      |       main      |  8069 |    TCP   |                                         |
| odoo                       |       odoo      |      odoo-1     |  8071 |    TCP   |                                         |
| odoo                       |       odoo      |      odoo-2     |  8072 |    TCP   |                                         |
| unifi                      |       comm      |       comm      |  8080 |    TCP   |                                         |
| calibre                    |    webserver    |    webserver    |  8081 |    TCP   |                                         |
| traccar                    |       main      |       main      |  8082 |    TCP   |                                         |
| calibre                    |       main      |       main      |  8083 |    TCP   |                                         |
| mylar                      |       main      |       main      |  8090 |    TCP   |                                         |
| zwavejs2mqtt               |       main      |       main      |  8091 |    TCP   |                                         |
| jellyfin                   |       main      |       main      |  8096 |    TCP   |                                         |
| deluge                     |       main      |       main      |  8112 |    TCP   |                                         |
| home-assistant             |       main      |       main      |  8123 |    TCP   |                                         |
| tautulli                   |       main      |       main      |  8181 |    TCP   |                                         |
| flaresolverr               |       main      |       main      |  8191 |    TCP   |                                         |
| duplicati                  |       main      |       main      |  8200 |    TCP   |                                         |
| tdarr                      |    main         |    main         |  8265 |    TCP   |                                         |
| tdarr                      |    comm         |    comm         |  8266 |    TCP   |                                         |
| tdarr-node                 |    main         |    main         |  8267 |    TCP   |                                         |
| beets                      |       main      |       main      |  8337 |    TCP   |                                         |
| syncthing                  |       main      |       main      |  8384 |    TCP   |                                         |
| unifi                      |       main      |       main      |  8443 |   HTTPS  |                                         |
| gaps                       |       main      |       main      |  8484 |    TCP   |                                         |
| lidarr                     |       main      |       main      |  8686 |    TCP   |                                         |
| readarr                    |       main      |       main      |  8787 |    TCP   |                                         |
| unifi                      |   guestportal   |       web       |  8880 |   HTTP   |                                         |
| unifi                      |   guestportal   |    websecure    |  8843 |   HTTPS  |                                         |
| resilio-sync               |       main      |       main      |  8888 |    TCP   |                                         |
| sonarr                     |       main      |       main      |  8989 |    TCP   |                                         |
| valheim                    |       main      |       main      |  9010 |    TCP   |                                         |
| valheim                    |    supervisor   |    supervisor   |  9011 |    TCP   |                                         |
| pihole                     |       main      |       main      |  9089 |    TCP   |                                         |
| minio-console              |       main      |       main      |  9090 |    TCP   |                                         |
| authelia                   |       main      |       main      |  9091 |    TCP   |                                         |
| jacket                     |       main      |       main      |  9117 |   HTTP   |                                         |
| unpoller                   |       main      |     metrics     |  9130 |    TCP   |                                         |
| owncloud-ocis              |       main      |       main      |  9200 |    TCP   |                                         |
| prowlarr                   |       main      |       main      |  9696 |    TCP   |                                         |
| uptimerobot-prometheus     |       main      |     metrics     |  9705 |    TCP   |                                         |
| speedtest-exporter         |       main      |     metrics     |  9798 |    TCP   |                                         |
| tvheadend                  |       main      |       main      |  9981 |    TCP   |                                         |
| tvheadend                  |       htsp      |       htsp      |  9982 |    TCP   |                                         |
| teamspeak3                 |      voice      |      voice      |  9987 |    UDP   |                                         |
| stash                      |       main      |       main      |  9999 |    TCP   |                                         |
| ser2sock                   |       main      |       main      | 10000 |    TCP   |                                         |
| deconz                     |    websocket    |    websocket    | 10001 |    TCP   |                                         |
| deconz                     |       vnc       |       vnc       | 10002 |    TCP   |                                         |
| external-service           |       main      |       main      | 10003 |   HTTPS  |                                         |
| nullserv                   |       main      |       main      | 10004 |    TCP   |                                         |
| nullserv                   |      https      |      https      | 10005 |    TCP   |                                         |
| apache-musicindex          |       main      |       main      | 10006 |    TCP   |                                         |
| cryptofolio                |       main      |       main      | 10007 |    TCP   |                                         |
| deconz                     |       main      |       main      | 10008 |    TCP   |                                         |
| dsmr-reader                |       main      |       main      | 10009 |    TCP   |                                         |
| freshrss                   |       main      |       main      | 10010 |    TCP   |                                         |
| teamspeak3                 |       main      |       main      | 10011 |    TCP   |                                         |
| grav                       |       main      |       main      | 10012 |    TCP   |                                         |
| grocy                      |       main      |       main      | 10013 |    TCP   |                                         |
| heimdall                   |       main      |       main      | 10014 |    TCP   |                                         |
| kanboard                   |       main      |       main      | 10015 |    TCP   |                                         |
| librespeed                 |       main      |       main      | 10016 |    TCP   |                                         |
| lychee                     |       main      |       main      | 10017 |    TCP   |                                         |
| mealie                     |       main      |       main      | 10018 |    TCP   |                                         |
| muximux                    |       main      |       main      | 10019 |    TCP   |                                         |
| nextcloud                  |       main      |       main      | 10020 |    TCP   |                                         |
| octoprint                  |       main      |       main      | 10021 |    TCP   |                                         |
| organizr                   |       main      |       main      | 10022 |    TCP   |                                         |
| gonic                      |       main      |       main      | 10023 |    TCP   |                                         |
| pgadmin                    |       main      |       main      | 10024 |    TCP   |                                         |
| photoshow                  |       main      |       main      | 10025 |    TCP   |                                         |
| phpldapadmin               |       main      |       main      | 10026 |    TCP   |                                         |
| piwigo                     |       main      |       main      | 10027 |    TCP   |                                         |
| pixapop                    |       main      |       main      | 10028 |    TCP   |                                         |
| recipes                    |       main      |       main      | 10029 |    TCP   |                                         |
| smokeping                  |       main      |       main      | 10030 |    TCP   |                                         |
| truecommand                |       main      |       main      | 10031 |    TCP   |                                         |
| audacity                   |       main      |       main      | 10032 |    TCP   |                                         |
| digikam                    |       main      |       main      | 10033 |    TCP   |                                         |
| doublecommander            |       main      |       main      | 10034 |    TCP   |                                         |
| filezilla                  |       main      |       main      | 10035 |    TCP   |                                         |
| flood                      |       main      |       main      | 10036 |    TCP   |                                         |
| gitea                      |       main      |       main      | 10037 |    TCP   |                                         |
| grafana                    |       main      |       main      | 10038 |   HTTP   |                                         |
| icantbelieveitsnotvaletudo |       main      |       main      | 10039 |    TCP   |                                         |
| littlelink                 |       main      |       main      | 10040 |    TCP   |                                         |
| mstream                    |       main      |       main      | 10041 |    TCP   |                                         |
| remmina                    |       main      |       main      | 10042 |    TCP   |                                         |
| onlyoffice-document-server |       main      |       main      | 10043 |    TCP   |                                         |
| wiki                       |       main      |       main      | 10044 |    TCP   |                                         |
| wikijs                     |       main      |       main      | 10045 |    TCP   |                                         |
| zwavejs2mqtt               |        ws       |        ws       | 10046 |    TCP   |                                         |
| airsonic                   |       main      |       main      | 10047 |    TCP   |                                         |
| booksonic-air              |       main      |       main      | 10048 |    TCP   |                                         |
| deepstack-cpu              |       main      |       main      | 10049 |    TCP   |                                         |
| deepstack-gpu              |       main      |       main      | 10050 |    TCP   |                                         |
| firefox-syncserver         |       main      |       main      | 10051 |    TCP   |                                         |
| whoogle                    |       main      |       main      | 10052 |    TCP   |                                         |
| handbrake                  |       main      |       main      | 10053 |    TCP   |                                         |
| jdownloader2               |       main      |       main      | 10054 |    TCP   |                                         |
| handbrake                  |       vnc       |       vnc       | 10055 |    TCP   |                                         |
| jdownloader2               |       vnc       |       vnc       | 10056 |    TCP   |                                         |
| nzbget                     |       main      |       main      | 10057 |    TCP   |                                         |
| friendica                  |       main      |       main      | 10058 |    TCP   |                                         |
| logitech-media-server      |       cli       |       cli       | 10059 |    TCP   |                                         |
| etherpad                   |       main      |       main      | 10060 |    TCP   |                                         |
| thelounge                  |       main      |       main      | 10061 |    TCP   |                                         |
| oscam                      |       main      |       main      | 10062 |    TCP   |                                         |
| code-server                |       main      |       main      | 10063 |    TCP   |                                         |
| headphones                 |       main      |       main      | 10064 |    TCP   |                                         |
| hyperion-ng                |       main      |       main      | 10065 |    TCP   |                                         |
| sickgear                   |       main      |       main      | 10066 |    TCP   |                                         |
| sickchill                  |       main      |       main      | 10067 |    TCP   |                                         |
| medusa                     |       main      |       main      | 10068 |    TCP   |                                         |
| babybuddy                  |       main      |       main      | 10069 |    TCP   |                                         |
| cloud9                     |       main      |       main      | 10070 |    TCP   |                                         |
| dizquetv                   |       main      |       main      | 10071 |    TCP   |                                         |
| focalboard                 |       main      |       main      | 10072 |    TCP   |                                         |
| golinks                    |       main      |       main      | 10073 |    TCP   |                                         |
| healthchecks               |       main      |       main      | 10074 |    TCP   |                                         |
| pyload                     |       main      |       main      | 10075 |    TCP   |                                         |
| shorturl                   |       main      |       main      | 10076 |    TCP   |                                         |
| static                     |       main      |       main      | 10077 |    TCP   |                                         |
| twtxt                      |       main      |       main      | 10078 |    TCP   |                                         |
| emby                       |       main      |       main      | 10079 |    TCP   |                                         |
| calibre                    |       main      |       main      | 10080 |    TCP   |                                         |
| davos                      |       main      |       main      | 10081 |    TCP   |                                         |
| fireflyiii                 |       main      |       main      | 10082 |    TCP   |                                         |
| fossil                     |       main      |       main      | 10083 |    TCP   |                                         |
| gotify                     |       main      |       main      | 10084 |    TCP   |                                         |
| komga                      |       main      |       main      | 10085 |    TCP   |                                         |
| owncast                    |       main      |       main      | 10088 |    TCP   |                                         |
| openkm                     |       main      |       main      | 10090 |    TCP   |                                         |
| miniflux                   |       main      |       main      | 10091 |    TCP   |                                         |
| piaware                    |       main      |       main      | 10092 |    TCP   |                                         |
| podgrab                    |       main      |       main      | 10093 |    TCP   |                                         |
| pretend-youre-xyzzy        |       main      |       main      | 10094 |    TCP   |                                         |
| qbittorrent                |       main      |       main      | 10095 |    TCP   |                                         |
| reg                        |       main      |       main      | 10096 |    TCP   |                                         |
| sabnzbd                    |       main      |       main      | 10097 |    TCP   |                                         |
| shiori                     |       main      |       main      | 10098 |    TCP   |                                         |
| statping                   |       main      |       main      | 10099 |    TCP   |                                         |
| teedy                      |       main      |       main      | 10100 |    TCP   |                                         |
| promcord                   |       main      |     metrics     | 10101 |    TCP   |                                         |
| vaultwarden                |       main      |       main      | 10102 |    TCP   |                                         |
| zigbee2mqtt                |       main      |       main      | 10103 |    TCP   |                                         |
| tt-rss                     |       main      |       main      | 10104 |    TCP   |                                         |
| collabora-online           |       main      |       main      | 10105 |    TCP   |                                         |
| minio                      |       main      |       main      | 10106 |    TCP   |                                         |
| minio                      |     console     |     console     | 10107 |    TCP   |                                         |
| transmission               |       main      |       main      | 10109 |    TCP   |                                         |
| anonaddy                   |       main      |       main      | 10110 |    TCP   |                                         |
| blog                       |       main      |       main      | 10111 |    TCP   |                                         |
| bookstack                  |       main      |       main      | 10112 |    TCP   |                                         |
| clarkson                   |       main      |       main      | 10113 |    TCP   |                                         |
| icinga2                    |       main      |       main      | 10114 |    TCP   |                                         |
| icinga2                    |      https      |       https     | 10115 |    TCP   |                                         |
| icinga2                    |       api       |       api       | 10116 |    TCP   |                                         |
| leantime                   |       main      |       main      | 10117 |    TCP   |                                         |
| leantime                   |       extra     |       extra     | 10118 |    UDP   |                                         |
| monica                     |       main      |       main      | 10119 |    TCP   |                                         |
| snipe-it                   |       main      |       main      | 10120 |    TCP   |                                         |
| xbackbone                  |       main      |       main      | 10121 |    TCP   |                                         |
| hyperion-ng                | boblightservice | boblightservice | 19333 |    TCP   |                                         |
| hyperion-ng                |   jsonservice   |   jsonservice   | 19444 |    TCP   |                                         |
| hyperion-ng                | protobufservice | protobufservice | 19445 |    TCP   |                                         |
| syncthing                  |    discovery    |    discovery    | 21027 |    UDP   |                                         |
| syncthing                  |    listeners    |       tcp       | 22000 |    TCP   |                                         |
| syncthing                  |  listeners-udp  |       udp       | 22000 |    UDP   |                                         |
| joplin-server              |       main      |       main      | 22300 |    TCP   |                                         |
| omada-controller           | omada-tcp       | omada-tcp1      | 29810 |    TCP   |                                         |
| omada-controller           | omada-udp       | omada-udp1      | 29810 |    UDP   |                                         |
| omada-controller           | omada-tcp       | omada-tcp2      | 29811 |    TCP   |                                         |
| omada-controller           | omada-udp       | omada-udp2      | 29811 |    UDP   |                                         |
| omada-controller           | omada-tcp       | omada-tcp3      | 29812 |    TCP   |                                         |
| omada-controller           | omada-udp       | omada-udp3      | 29812 |    UDP   |                                         |
| omada-controller           | omada-tcp       | omada-tcp4      | 29813 |    TCP   |                                         |
| omada-controller           | omada-udp       | omada-udp4      | 29813 |    UDP   |                                         |
| teamspeak3                 |      files      |      files      | 30033 |    TCP   |                                         |
| plex                       |       main      |       main      | 32400 |    TCP   | Potential conflict with plex (Official) |
| xteve                      |       main      |       main      | 34400 |    TCP   |                                         |
| appdaemon                  |       tcp       |       tcp       | 51050 |    TCP   |                                         |
| podgrab                    |       tcp       |       tcp       | 51080 |    TCP   |                                         |
| deluge                     |     torrent     |       tcp       | 51413 |    TCP   |                                         |
| deluge                     |   torrent-udp   |       udp       | 51413 |    UDP   |                                         |
| transmission               |     torrent     |     torrent     | 51414 |    TCP   |                                         |
| transmission               |    torrentudp   |    torrentudp   | 51414 |    UDP   |                                         |
| resilio-sync               |      bt-tcp     |      bt-tcp     | 55555 |    TCP   |                                         |
| resilio-sync               |      bt-udp     |      bt-udp     | 55555 |    UDP   |                                         |

## Dependency Apps

| App        | Service | Port Name |  Port | Protocol | Note |
|:-----------|:-------:|:---------:|:-----:|:--------:|:----:|
| promtail   |   main  |    main   |  3101 |    TCP   |      |
| mariadb    |   main  |    main   |  3306 |    TCP   |      |
| postgresql |   main  |    main   |  5432 |    TCP   |      |
| redis      |   main  |    main   |  6379 |    TCP   |      |
| memcached  |   main  |    main   | 11211 |    TCP   |      |


## Official Apps

| App        |   Service   |  Port |                    Note                   |
|:-----------|:-----------:|:-----:|:-----------------------------------------:|
| chia       |     main    |  8444 |                                           |
| chia       |  farmerPort |  8447 |                                           |
| minio      |     main    |  9000 |      Potential conflict with traefik      |
| nextcloud  |     main    |  9001 |                                           |
| minio      | consolePort |  9002 |                                           |
| machinaris |     main    |  9003 |                                           |
| ipfs       |  swarmPort  |  9401 |                                           |
| ipfs       |   apiPort   |  9501 |                                           |
| ipfs       | gatewayPort |  9880 |                                           |
| collabora  |     main    |  9980 |                                           |
| plex       |     main    | 32400 | Potential conflict with plex (Truecharts) |

## TrueNAS Scale Services

| Service | Port | Protocol | Note |
|:--------|:----:|:--------:|:----:|
| ssh     |  22  |    TCP   |      |
| webui   |  80  |   HTTP   |      |
| webui   |  443 |   HTTPS  |      |

##### Note: TCP and UPD ports that are the same in some Apps, are not by mistake.

##### If you notice a port conflict, please notify us so we can resolve it (when possible).
