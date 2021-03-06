#!/bin/bash
if [[ ${SCS_VERBOSE_MODE} = true ]]; then
    set -x
fi
if [[ -z ${SCS_FILEZILLA_NAME} ]]; then
    nohup "${SCS_FILEZILLA_PATH}" -l ask ${SCS_FILEZILLA_PROTOCOL}://${SCS_SSH_USERNAME}@${SCS_SSH_SERVER} &> /dev/null &
else
    nohup "${SCS_FILEZILLA_PATH}" -c "0/${SCS_FILEZILLA_NAME}" &> /dev/null &
fi