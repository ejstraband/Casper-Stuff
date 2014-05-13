#!/bin/bash
# create a keypair if it doesn't exist.  Store it in the default location.
if [ ! -f ~/.ssh/id_rsa.pub ]; then 
    ssh-keygen -P '' -f ~/.ssh/id_rsa
fi
open -a /Applications/TextEdit.app ~/.ssh/id_rsa.pub
echo -e "\033[1;31m" "*** Please copy and paste the contents of the TextEdit window I just opened into an email to noc@bloomhealthco.com ****" "\033[0m" "\n" \
"Once copied, the text edit window and this terminal can be closed.  \n" \
"Thanks!"
# unfortunately this doesn't always succeed sending after queuing; some postfixes are broken.
#mail -s "Public key for `whoami`" -c "`whoami`@bloomhealthco.com" noc@bloomhealthco.com < ~/.ssh/id_rsa.pub
