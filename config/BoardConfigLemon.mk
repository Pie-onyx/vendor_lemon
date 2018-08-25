include vendor/lemon/config/BoardConfigKernel.mk
include vendor/lemon/config/BoardConfigSoong.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lemon/config/BoardConfigQcom.mk
endif
