#!/bin/bash
rsync -av -e 'ssh -p 2022 -i ~/<cloud_server_key_file>' ~/video/* root@<remote_server_ip>:<remote_path>
