#!/bin/bash


PSE_DN=$1
PSE_PASSWD=$2

SAPGENPSE=./snc/linux/sapgenpse
PSE_FILE="RFC.pse"
CRT_FILE="RFC.crt"

export SECUDIR="./sec"

$SAPGENPSE gen_pse -v -p "${PSE_FILE}" -x "${PSE_PASSWD}" "${PSE_DN}"
$SAPGENPSE export_own_cert -v -p "${PSE_FILE}" -x "${PSE_PASSWD}" -o "${SECUDIR}/${CRT_FILE}"