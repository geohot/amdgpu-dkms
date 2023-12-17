#!/bin/bash
#curl -o driver.deb https://repo.radeon.com/amdgpu/5.3/ubuntu/pool/main/a/amdgpu-dkms/amdgpu-dkms_5.18.2.22.40.50300-1483871.22.04_all.deb
#curl -o driver.deb https://repo.radeon.com/amdgpu/5.5/ubuntu/pool/main/a/amdgpu-dkms/amdgpu-dkms_6.0.5.50500-1581431.22.04_all.deb
#curl -o driver.deb https://repo.radeon.com/amdgpu/5.5.1/ubuntu/pool/main/a/amdgpu-dkms/amdgpu-dkms_6.0.5.50501-1593694.22.04_all.deb
curl -o driver.deb https://repo.radeon.com/amdgpu/6.0/ubuntu/pool/main/a/amdgpu-dkms/amdgpu-dkms_6.3.6.60000-1697589.22.04_all.deb
dpkg -x driver.deb .
rm -rf amdgpu
mv usr/src/amdgpu-* amdgpu
rm -rf etc usr driver.deb
