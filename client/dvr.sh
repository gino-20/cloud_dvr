#!/bin/bash
killall ffmpeg
rm -f /home/cam/video/*
ffmpeg -rtsp_transport tcp -r 15 -y -i "rtsp://<rtsp_login:pass>@<camera_IP>:554/ISAPI/Streaming/Channels/101" -vcodec copy -acodec copy -map 0 -f segment -segment_time 60 -segment_list /home/cam/video/streams.m3u8 "/home/cam/video/stream%04d_$(date +%u).mkv"
