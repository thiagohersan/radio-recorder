#!/bin/bash

streamripper 'http://mmg.streamguys1.com/AdomFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a AdomFM_%q -l 8000 -s -d ./out &

streamripper 'http://mmg.streamguys1.com/LuvFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a LuvFM_%q -l 8000 -s -d ./out &

streamripper 'http://pvstreaming.rri.co.id:9025/rrijakartapro1.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a rri_%q -l 8000 -s -d ./out &

streamripper 'http://82.114.72.2:8088/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a 82114722_%q -l 8000 -s -d ./out &

streamripper 'http://streams.radioafricagroup.co.ke:88/broadwave.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a radioafricagroup_%q -l 8000 -s -d ./out &

streamripper 'http://38.107.243.226:8010/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a 38107243226_%q -l 8000 -s -d ./out &

streamripper 'http://live01.kezik.net/sapientia' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a kezik_%q -l 8000 -s -d ./out &

streamripper 'http://icecast.vgtrk.cdnvideo.ru/rrzonam_mp3_192kbps' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a rrzonam_%q -l 8000 -s -d ./out &

streamripper 'http://streamingv2.shoutcast.com/BeladiFm966' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a BeladiFm966_%q -l 8000 -s -d ./out &

streamripper 'http://icecast.vgtrk.cdnvideo.ru/mayakfm_mp3_64kbps' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a mayakfm_%q -l 8000 -s -d ./out &

streamripper 'http://sbs-ice.streamguys1.com/sbs2' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a sbs2_%q -l 8000 -s -d ./out &

streamripper 'http://ntvsporsc.radyotvonline.com/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a radyotvonline_%q -l 8000 -s -d ./out &

streamripper 'http://19293.live.streamtheworld.com:3690/JP_NEWSAAC_SC' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a JPNEWS_%q -l 8000 -s -d ./out &

streamripper 'http://usa12.fastcast4u.com:5080/;' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a usa12_%q -l 8000 -s -d ./out &

streamripper 'http://icecast-streaming.nice264.com/mallorca?.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a mallorca_%q -l 8000 -s -d ./out &

streamripper 'http://icestreaming.rai.it/1.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a rai_%q -l 8000 -s -d ./out &

streamripper 'http://radiomars.ice.infomaniak.ch/radiomars-128.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' --xs-none -A -a radiomars_%q -l 8000 -s -d ./out

rm -rf ./out/*.cue ./out/incomplete
find ./out -size 0 | xargs -d '\n' rm -rf

MDATE=$(date +%Y%m%d_%H%M%S)
mv out out-$MDATE
zip -r out-$MDATE.zip out-$MDATE
