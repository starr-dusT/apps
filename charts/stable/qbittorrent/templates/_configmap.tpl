{{/* Define the configmap */}}
{{- define "qbittorrent.configmap" -}}

---
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ template "common.names.fullname" . }}-scripts
  labels:
    {{- include "common.labels" . | nindent 4 }}
data:
  {{- $bittorrentPort := "" -}}
  {{- $bittorrentPort = .Values.service.torrent.ports.torrent.port -}}
  {{- if $bittorrentPort }}
  31-update-port: |-
    #!/bin/bash
    QBITTORRENT_CONFIGFILE="/config/qBittorrent/qBittorrent.conf"
    INCOMING_PORT={{- $bittorrentPort }}

    incoming_port_exist=$(cat ${QBITTORRENT_CONFIGFILE} | grep -m 1 'Connection\\PortRangeMin='${INCOMING_PORT})
    if [[ -z "${incoming_port_exist}" ]]; then
      incoming_exist=$(cat ${QBITTORRENT_CONFIGFILE} | grep -m 1 'Connection\\PortRangeMin')
      if [[ ! -z "${incoming_exist}" ]]; then
        # Get line number of Incoming
        LINE_NUM=$(grep -Fn -m 1 'Connection\PortRangeMin' ${QBITTORRENT_CONFIGFILE} | cut -d: -f 1)
        sed -i "${LINE_NUM}s@.*@Connection\\\PortRangeMin=${INCOMING_PORT}@" ${QBITTORRENT_CONFIGFILE}
      else
        echo "Connection\\PortRangeMin=${INCOMING_PORT}" >> ${QBITTORRENT_CONFIGFILE}
      fi
    fi
  {{- end }}
{{- end -}}
