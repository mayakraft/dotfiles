#!/bin/bash

# current moon phase as an integer between 0 and 360
get_phase () {
  # one lunar cycle in seconds is 2551442.9
  local lunarcycle=2551443
  # get unix time stamp in seconds
  local now=$(date -ju +"%s")
  # the new moon on January 24, 21:42 GMT
  local newmoon=1579902120
  local elapsed=$(($now - $newmoon))
  local phase=$(($elapsed % $lunarcycle))
  # divide by seconds per cycle, multiply by 360
  echo $((($phase * 360) / $lunarcycle))
}

get_moon_icon () {
  local icon="🌑"
  # the phase as an integer between 0 and 360
  local phase=$(get_phase)
  # 45 degree slices, offset by 22.5, as integers
  if [ $phase -lt 23 ]; then icon="🌑"
  elif [ $phase -lt 68 ]; then icon="🌒"
  elif [ $phase -lt 113 ]; then icon="🌓"
  elif [ $phase -lt 158 ]; then icon="🌔"
  elif [ $phase -lt 203 ]; then icon="🌕"
  elif [ $phase -lt 248 ]; then icon="🌖"
  elif [ $phase -lt 293 ]; then icon="🌗"
  elif [ $phase -lt 338 ]; then icon="🌘"
  fi
  echo $icon
}

get_moon_icon
