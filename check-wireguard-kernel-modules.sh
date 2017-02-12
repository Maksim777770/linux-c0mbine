#!/bin/bash

mod_array=(
  "CONFIG_NET"
  "CONFIG_INET"
  "CONFIG_NET_UDP_TUNNEL"
  "CONFIG_NF_CONNTRACK"
  "CONFIG_NETFILTER_XT_MATCH_HASHLIMIT"
  "CONFIG_IP6_NF_IPTABLES"
  "CONFIG_CRYPTO_BLKCIPHER"
  "CONFIG_PADATA"
  )

for mod in ${mod_array[@]}
do
  #echo "checking for mod: $mod"
  result=$(zgrep "$mod=y" /proc/config.gz)
  if [ $? -eq 0 ]
  then
    echo "$mod: Found!"
  else
    echo "$mod: NOT FOUND!"
  fi
done
