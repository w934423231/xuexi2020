#!/bin/bash
curl http://127.0.0.1/index.html -o /dev/null -s | nginx

if  [ $? -ne 0 ];then
       killall keepalived
fi
                  