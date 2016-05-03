# Target-specific configuration

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)

    COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
    COMMON_GLOBAL_CPPFLAGS += -DQCOM_HARDWARE

    ifeq ($(TARGET_USES_QCOM_BSP),true)
        COMMON_GLOBAL_CFLAGS += -DQCOM_BSP -DQTI_BSP
        COMMON_GLOBAL_CPPFLAGS += -DQCOM_BSP -DQTI_BSP
    endif
endif