#!/usr/bin/env sh
CFG=step5_HARVESTING.py
LOG_FILE="./logs/step5.txt"

INPUT_FILE_LIST=./filelist-step4_DQM_default.txt
cmsRun ${CFG} inputFiles_load=${INPUT_FILE_LIST} filePrepend=file: > ${LOG_FILE} 2>&1 &

tail -f ${LOG_FILE}