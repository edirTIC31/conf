#!/bin/bash

KEYS=~/.ssh/authorized_keys
echo 'Deploying $KEYS'
mkdir -p ~/.ssh
[[ -f $KEYS ]] && mv $KEYS{,.deploy_backup}
ln -s authorized_keys $KEYS
