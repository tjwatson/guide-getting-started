#!/bin/bash -x

sudo podman build \
   -f Dockerfile \
   -t getting-started-og \
   --cap-add=CHECKPOINT_RESTORE \
   --cap-add=SYS_PTRACE\
   --cap-add=SETPCAP \
   --security-opt seccomp=unconfined .


