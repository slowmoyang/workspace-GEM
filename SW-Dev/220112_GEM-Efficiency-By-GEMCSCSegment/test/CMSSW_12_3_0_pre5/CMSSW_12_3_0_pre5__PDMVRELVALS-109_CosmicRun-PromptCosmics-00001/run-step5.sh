#!/usr/bin/env sh
source setup.sh

CFG=step5_HARVESTING.py
LOG_FILE="./logs/test-step5.txt"

INPUT_FILE_LIST=filelist-DQM.txt
cmsRun ${CFG} inputFiles_load=${INPUT_FILE_LIST} > ${LOG_FILE} 2>&1 &

tail -f ${LOG_FILE}