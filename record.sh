#!/bin/bash

streamripper 'http://mmg.streamguys1.com/AdomFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://mmg.streamguys1.com/LuvFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://ample-zeno-18.radiojar.com/8b0eacw4vewtv' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://ample-zeno-18.radiojar.com/yuvvf2f76k5tv' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://ample-zeno-19.radiojar.com/s0the9bwb84tv' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://ample-zeno-20.radiojar.com/27y3a02mb' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://sip-live.hds.adaptive.level3.net/hls-live/ruv-ras2/_definst_/live/stream1.m3u8' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://pvstreaming.rri.co.id:9025/rrijakartapro1.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://82.114.72.2:8088/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://streams.radioafricagroup.co.ke:88/broadwave.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://38.107.243.226:8010/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://live01.kezik.net/sapientia' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://icecast.vgtrk.cdnvideo.ru/rrzonam_mp3_192kbps' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://streamingv2.shoutcast.com/BeladiFm966' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://icecast.vgtrk.cdnvideo.ru/mayakfm_mp3_64kbps' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://sbs-ice.streamguys1.com/sbs2' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://ntvsporsc.radyotvonline.com/listen.pls' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://19293.live.streamtheworld.com:3690/JP_NEWSAAC_SC' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://usa12.fastcast4u.com:5080/;' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://icecast-streaming.nice264.com/mallorca?.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://icestreaming.rai.it/1.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out &

streamripper 'http://radiomars.ice.infomaniak.ch/radiomars-128.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' -A -a %S%q -l 8000 -s -d ./out

rm -rf ./out/*.cue ./out/incomplete

aws s3 cp --recursive ./out s3://$AWS_S3_BUCKET/out/ --region us-east-1

sleep 24h
