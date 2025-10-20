LOG_STEP_IN "- Replacing nfc blobs with a73xqxx"
DELETE_FROM_WORK_DIR "vendor" "bin/hw/nxp.android.hardware.nfc@1.1-service"
DELETE_FROM_WORK_DIR "vendor" "etc/init/nxp.android.hardware.nfc@1.1-service.rc"
DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.nxp.nxpnfc@1.0.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.nxp.nxpnfc@1.1.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/nfc_nci_nxp.so"

ADD_TO_WORK_DIR "a73xqxx" "vendor" "bin/hw/nxp.android.hardware.nfc@1.2-service" 0 2000 755 "u:object_r:hal_nfc_default_exec:s0"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "etc/init/nxp.android.hardware.nfc@1.2-service.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "etc/vintf/manifest/nxp.android.hardware.nfc@1.2-service.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "lib64/nfc_nci_nxpsn.so" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "lib64/vendor.samsung.hardware.nfc@2.0.so" 0 0 644 "u:object_r:vendor_configs_file:s0"
LOG_STEP_OUT
