#!/usr/bin/env sh

objcopy \
    --add-section .linux="${BINARIES_DIR}/bzImage" --change-section-vma .linux=0x2000000 \
    --add-section .initrd="${BINARIES_DIR}/rootfs.cpio.xz" --change-section-vma .initrd=0x3000000 \
    "${BR2_EXTERNAL_KODIEFI_PATH}/blobs/linuxx64.efi.stub" "${BINARIES_DIR}/kodi.efi"
