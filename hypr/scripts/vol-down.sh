#!/bin/bash
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
notify-send -h int:value:$vol -h string:x-canonical-private-synchronous:volume "Volume" "$vol%"
