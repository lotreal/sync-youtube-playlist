#!/usr/bin/env bash
DOWNLOAD_DIR=/tmp/youtube
SSH_OPTS="-p 60514 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
rsync -avz -e "ssh ${SSH_OPTS}" --progress --include='*.txt' --include='*/' --exclude='*' travis@118.24.3.113:~/youtube /tmp/

youtube:download:playlist() {
    local NAME=$1
    local URL=$2
    echo $URL

    mkdir -p ${DOWNLOAD_DIR}/${NAME} && cd ${DOWNLOAD_DIR}/${NAME}
    youtube-dl --download-archive index.txt ${URL}
}

youtube:download:playlist swin https://www.youtube.com/playlist?list=PLOFLQd-wHzhc0vwx5AnUcA6qG4Y-nJc57
youtube:download:playlist kids https://www.youtube.com/playlist?list=PLOFLQd-wHzhdJW8Q8ru95N2a1GEclaLvN
youtube:download:playlist musicool-share https://www.youtube.com/playlist?list=PLOFLQd-wHzhca8XhVROZNK7TMmIiLtQda
youtube:download:playlist musicool-bb https://www.youtube.com/playlist?list=PLOFLQd-wHzhfp2Fm08yE2GE8Nn1r91XbN

exit 0
