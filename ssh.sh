#!/bin/bash
if [[ ${SCS_VERBOSE_MODE} = true ]]; then
    set -x
fi
if [[ -z ${SCS_SSH_PRIVATEKEY} ]]; then
    "${SCS_SSH_PATH}" ${SCS_SSH_OTHER_OPTIONS} ${SCS_SSH_USERNAME}@${SCS_SSH_SERVER}
else
    "${SCS_SSH_PATH}" ${SCS_SSH_OTHER_OPTIONS} -i "${SCS_KEYS_DIR}${SCS_SSH_PRIVATEKEY}" ${SCS_SSH_USERNAME}@${SCS_SSH_SERVER}
fi
