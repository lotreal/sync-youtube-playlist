# sync-youtube-playlist [![Build Status](https://travis-ci.org/lotreal/sync-youtube-playlist.svg?branch=master)](https://travis-ci.org/lotreal/sync-youtube-playlist)
Download and sync youtube playlist media file to your host

## Usage
1. fork me
2. open your [travis](https://travis-ci.org) switch
   ``` shell shell
   travis env set HOST xx
   travis env set USER xx

   ssh-keygen -t rsa -b 4096 -C 'build@travis-ci.org' -f ./deploy_rsa
   travis encrypt-file deploy_rsa --add

   ssh-copy-id -i deploy_rsa.pub <ssh-user>@<host-host>

   rm -f deploy_rsa deploy_rsa.pub
   git add deploy_rsa.enc .travis.yml
   ```
3. edit sync.sh, config your playlist url
4. commit
