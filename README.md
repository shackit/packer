# packer

A project that utilises [Packer](http://packer.io) templates for building
Virtualbox virtual machine images.

## Pre-built Boxes

The following boxes are built from this repository's templates.

| Operating System  | Architecture              |
| ----------------  | -------------             |
| centos-7.1        |  [x86_64]                 |  
| ubuntu-14.04.4      |  [amd64]                  |  
| ubuntu-16.04.1      |  [amd64]                  |  

## Building AMI's

### build Ubuntu 14.04 OS
    packer build ubuntu-14.04.4.json

### build Ubuntu 14.04 OS
    packer build ubuntu-16.04.1.json

### build Centos 7.1 OS
    packer build centos-7.1.json

### debugging
    PACKER_LOG=1 PACKER_LOG_PATH=logs/debug.log packer build ubuntu-14.04.json

## scripts
