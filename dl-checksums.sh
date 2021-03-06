#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/cloudfoundry/bosh-cli/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-}
    local platform="${os}-${arch}"
    local file="bosh-cli-${ver}-${platform}${dotexe}"
    local url=$MIRROR/v$ver/$file
    local lfile=$DIR/$file
    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver linux amd64
    dl $ver windows amd64 .exe
}

dl_ver ${1:-6.4.4}
