#!/bin/bash
export SCS_SSH_USERNAME="username"
export SCS_SSH_SERVER="192.168.1.1"
export SCS_SSH_OTHER_OPTIONS="-L 8080:localhost:8080"
export SCS_SSH_PRIVATEKEY="test.key"
export SCS_FILEZILLA_NAME="Sample"
export SCS_FILEZILLA_PROTOCOL="sftp"
$(dirname $0)/lib/launch.sh "$@"