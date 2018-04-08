#!/bin/bash
QUERIES=( $1 )
function play(){
    # -------------------------------------------------------
    # Arguments: $1 int. Title-Index
    # Global variables: VIDEOON, AUDIOON
    # Desc: play selected Audio or Video with mplayer
    # -------------------------------------------------------
    if [ "$VIDEOON" = "true" -a "$AUDIOON" = "true" ]; then
        ($MPlayer -slave -quiet -framedrop -cache 384 -xy ${SIZE} -geometry ${COORDX}:${COORDY} -cookies -cookies-file $YCookie $($YouDL -gf 18 "${YWatch}?v=$1") >/dev/null 2>&1) &
        
    fi
    if [  "$VIDEOON" = "false" -a "$AUDIOON" = "true" ]; then
        ($MPlayer -slave -quiet -vo null -framedrop -cache 384 -cookies -cookies-file $YCookie $($YouDL -gf 18 "${YWatch}?v=$1") >/dev/null 2>&1) &
    fi
    if [  "$VIDEOON" = "true" -a "$AUDIOON" = "false" ]; then
        ($MPlayer -slave -quiet -nosound -framedrop -cache 384 -xy ${SIZE} -geometry ${COORDX}:${COORDY} -cookies -cookies-file $YCookie $($YouDL -gf 18 "${YWatch}?v=$1") >/dev/null 2>&1) &
    fi
    if [  "$VIDEOON" = "false" -a "$AUDIOON" = "false" ]; then
        return 1
    fi
    #disown
}

for t in ${QUERIES[@]}
do
    play $t all
    wait $!
done
