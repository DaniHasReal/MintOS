if [[ $TARGET_SINGLE_SYSTEM_IMAGE == "qssi" ]]; then

    LOG_STEP_IN "- Adding S21 FE (r9qxxx) lib / blobs"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/apex/com.android.runtime.apex" 0 0 644 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/apex/com.android.i18n.apex" 0 0 644 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/bin/bootstrap" 0 2000 751 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/bin/linker" 0 2000 755 "u:object_r:system_linker_exec:s0"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/bin/linker_asan" 0 2000 755 "u:object_r:system_file:s0"
    ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib" 0 0 755 "u:object_r:system_lib_file:s0"
    LOG_STEP_OUT

    LOG_STEP_IN "- Setting props"
    SET_PROP "vendor" "ro.vendor.product.cpu.abilist" "arm64-v8a"
    SET_PROP "vendor" "ro.vendor.product.cpu.abilist32" ""
    SET_PROP "vendor" "ro.vendor.product.cpu.abilist64" "arm64-v8a"
    SET_PROP "vendor" "ro.zygote" "zygote64"
    SET_PROP "vendor" "dalvik.vm.dex2oat64.enabled" "true"
    LOG_STEP_OUT
fi
