#!/usr/bin/env bash
curl -s -L $CONFIG_FILE -o td-agent.conf.download
cat td-agent.conf.download
/usr/sbin/td-agent -c td-agent.conf.download