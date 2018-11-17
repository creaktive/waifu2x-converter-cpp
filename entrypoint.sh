#!/bin/bash
# Shamelessly stolen from:
# https://github.com/siomiz/waifu2x-converter-cpp/blob/master/entrypoint.sh
set -e

INFILE=$(tempfile).png
OUTFILE=$(tempfile).png

tee ${INFILE} > /dev/null

if [ ! -z ${INFILE} ]; then

    waifu2x-converter-cpp $@ -i ${INFILE} -o ${OUTFILE} > /dev/null

    cat ${OUTFILE}

    rm ${INFILE} ${OUTFILE}

fi

exit 0
