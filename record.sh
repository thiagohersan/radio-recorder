#!/bin/bash

streamripper 'http://19293.live.streamtheworld.com:3690/JP_NEWSAAC_SC' -u 'iTunes/4.7 (Macintosh; N; PPC)' \
-a %S%q -l 30 -s -d ./out &

streamripper 'http://usa12.fastcast4u.com:5080/;' -u 'iTunes/4.7 (Macintosh; N; PPC)' \
-a %S%q -l 30 -s -d ./out &

streamripper 'http://icecast-streaming.nice264.com/mallorca?.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' \
-a %S%q -l 30 -s -d ./out &

streamripper 'http://icestreaming.rai.it/1.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' \
-a %S%q -l 30 -s -d ./out &

streamripper 'http://radiomars.ice.infomaniak.ch/radiomars-128.mp3' -u 'iTunes/4.7 (Macintosh; N; PPC)' \
-a %S%q -l 30 -s -d ./out

aws s3 cp --recursive ./out s3://$AWS_S3_BUCKET/ --region us-east-1
