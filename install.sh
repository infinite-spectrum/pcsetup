#!/bin/zsh

echo "WARNINGS:"
echo "\t 1. This will override your existing .zshrc (with backup)"
echo "\t 2. This may cause some problems if README.md is not properly followed."
echo
echo -n "Do you still want to continue?(y/n): "; read yes_or_no
echo
[[ "${yes_or_no}" != "y" ]] && exit

exit_with_msg(){
    echo
    echo "ERROR: ${1}" >&2
    exit 1
}

# Setting up pcsetup
PCSETUP="${HOME}/.pcsetup"
mkdir -p ${PCSETUP}/scripts

#Copying antigen.zsh to pcsetup dir
(curl -L git.io/antigen > ${PCSETUP}/antigen.zsh) || exit_with_msg "Failed to curl antigen.sh"

#Copying scripts to PCSETUP/scripts
cp scripts/* ${PCSETUP}/scripts

# Create backup of existing zshrc
CURRENT_ZSHRC="${HOME}/.zshrc"
ZSHRC_BKP_DIR="${PCSETUP}/zshrcbkp"
CURRENT_DATE=$(date +"%d_%m_%Y")
BACKUP_ZSHRC_NAME="${ZSHRC_BKP_DIR}/zshrc_${CURRENT_DATE}"

mkdir -p ${ZSHRC_BKP_DIR}

echo "Your existing .zshrc is backed up at ${BACKUP_ZSHRC_NAME}"
cp ${CURRENT_ZSHRC} ${BACKUP_ZSHRC_NAME}


# copy zshrc from dotfiles folder.
cp dotfiles/.zshrc ${CURRENT_ZSHRC}

echo "SUCCESS"
echo "Please source zshrc using source ~/.zshrc"