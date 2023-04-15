#!usr/bin/env bash
date

INFILE=$1
for x in $(cat ${INFILE})
do
  echo "Downloading file:" ${x}
  fastq-dump --split-files --gzip ${x}
done

date
