#!/usr/bin/env bash


CONNECTOR_DIRECTORY=${1:-$(pwd)}

export SECUDIR=${CONNECTOR_DIRECTORY}/sec
export SNC_LIB=${CONNECTOR_DIRECTORY}/snc/linux/libsapcrypto.so

java -jar ${CONNECTOR_DIRECTORY}/connector-sap.jar