ifneq ($(TARGET_BUILD_USER_ID),)
    LEMON_BUILD_ID := $(TARGET_BUILD_USER_ID)
else
    LEMON_BUILD_ID := build-bot
endif

LEMON_TARGET_PACKAGE := $(PRODUCT_OUT)/lemon-$(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(TARGET_DEVICE)-$(LEMON_BUILD_ID).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LEMON_TARGET_PACKAGE)
	$(hide) $(SHA256) $(LEMON_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(LEMON_TARGET_PACKAGE).sha256sum
	@echo "Package Complete: $(LEMON_TARGET_PACKAGE)" >&2
