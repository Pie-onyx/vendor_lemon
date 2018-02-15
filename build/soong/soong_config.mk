# Insert new variables inside the Lineage structure
lineage_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Lineage": {'; \
	echo '    "Target_shim_libs": "$(TARGET_LD_SHIM_LIBS)"'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
