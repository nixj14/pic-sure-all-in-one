#!/usr/bin/env bash

# These are the default options used by HPDS and Wildfly, respectively
# This file gets copied to ../opts.sh during the initial configuration
# From there you can modify it freely (it's gitignored, so your changes 
# shouldn't be trampled)

export WILDFLY_JAVA_OPTS="-Xms2g -Xmx4g -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true $PROXY_OPTS"
export HPDS_OPTS="-XX:+UseParallelGC -XX:SurvivorRatio=250 -Xms1g -Xmx16g -DCACHE_SIZE=1500 -DSMALL_TASK_THREADS=1 -DLARGE_TASK_THREADS=1 -DSMALL_JOB_LIMIT=100 -DID_BATCH_SIZE=$EXPORT_SIZE -DALL_IDS_CONCEPT=NONE -DID_CUBE_NAME=NONE -Denable_file_sharing=true"

