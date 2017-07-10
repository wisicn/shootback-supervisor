#!/bin/bash
docker run --name myshootback -d --restart=always -v /your/path/to/shootback_config_director:/etc/supervisor.d -p 10022:10022 -p 10023:10023  wisicn/shootback
