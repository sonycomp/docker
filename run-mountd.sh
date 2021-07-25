#!/bin/bash

set -eu

  mkdir -p /exports
  chmod 777 /exports
  echo "/exports *(rw,sync,no_subtree_check,no_root_squash,insecure)" >> /etc/exports
done

exportfs -a
rpcbind
rpc.statd
rpc.nfsd

exec rpc.mountd --foreground
