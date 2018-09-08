_contents := $(_contents)    "Lemon":{$(newline)

# See build/core/soong_config.mk for the add_json_* functions you can use here.
$(call add_json_bool, Has_legacy_camera_hal1, $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)))
$(call add_json_bool, Needs_text_relocations, $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)))
$(call add_json_str, Target_shim_libs, $(TARGET_LD_SHIM_LIBS))

# This causes the build system to strip out the last comma in our nested struct, to keep the JSON valid.
_contents := $(_contents)__SV_END

_contents := $(_contents)    },$(newline)
