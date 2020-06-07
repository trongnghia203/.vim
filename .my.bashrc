# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

cd ~/gdc-prj

ssh-add ~/.ssh/id_rsa > /dev/null
# kinit nghia.le@INTGDC.COM > /dev/null

export PATH="/Users/nghiale/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

alias home="cd ~/gdc-prj"
alias mgmt_dev="ssh -AJ nghia.le@mgmt-dev.na.intgdc.com"