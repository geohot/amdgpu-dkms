#!/bin/bash
#curl -O https://repo.radeon.com/amdgpu/5.5/ubuntu/pool/main/a/amdgpu-dkms/amdgpu-dkms_6.0.5.50500-1581431.22.04_all.deb
dpkg -x amdgpu-dkms_6.0.5.50500-1581431.22.04_all.deb .
rm -rf amdgpu
mv usr/src/amdgpu-6.0.5-1581431.22.04 amdgpu
rm -rf etc usr
#rm *.deb
