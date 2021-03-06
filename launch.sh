#!/bin/bash
##################### VARS ########################
RUN_FILEZILLA=false
###################################################
set -e
while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    -f|--filezilla)
    RUN_FILEZILLA=true
    shift # move pass argument
    ;;
    -x|-v|--verbose)
    export SCS_VERBOSE_MODE=true
    shift # move pass argument
    ;;
    *)    # unknown option
    echo "Invalid option '$key' supplied."
    exit 1
    ;;
esac
done
. $(dirname $0)/config.sh
if [[ ! -v SCS_SSH_PATH ]] && [[ ! -v SCS_FILEZILLA_PATH ]]; then
    echo "Missing variables! Please setup a config.sh"
    exit 1
fi

if [[ ${RUN_FILEZILLA} = true ]]; then
    $(dirname $0)/filezilla.sh
else
    $(dirname $0)/ssh.sh
fi