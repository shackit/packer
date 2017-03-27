#!/bin/sh -eux

# Vagrant and GuestAdditions installer pre-requisites:
case "$PACKER_BUILDER_TYPE" in

  virtualbox-iso|virtualbox-ovf)
    yum -y install bzip2 gcc \
    kernel-headers-`uname -r` kernel-devel-`uname -r` \
    make perl wget nfs-utils net-tools \
    openssh-clients sudo
    ;;

  *)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected.";
    echo "Known are virtualbox-iso|virtualbox-ovf|.";
    ;;

esac
