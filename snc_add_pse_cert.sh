#!/bin/bash


SAP_CRT=$1
PSE_PASSWD=$2

SAPGENPSE=./snc/linux/sapgenpse
PSE_FILE="RFC.pse"

export SECUDIR="./sec"

$SAPGENPSE maintain_pk -v -p "${PSE_FILE}" -x "${PSE_PASSWD}" -a "${SAP_CRT}"
$SAPGENPSE seclogin -v -p "${PSE_FILE}" -x "${PSE_PASSWD}"