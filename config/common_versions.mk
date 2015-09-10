
# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=LYZ28K BUILD_ID=LYZ28K BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

# Versioning System
# SlimLP first version.
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 1
#PRODUCT_VERSION_MAINTENANCE = 0.1

ifndef EOS_BUILD_TYPE
    EOS_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
    EOS_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif


# Set all versions
ROM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CUSTOM_BUILD)-$(EOS_BUILD_TYPE)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  BUILD_DISPLAY_ID=$(BUILD_ID) \
  ro.eos.version=$(ROM_VERSION) \
  eos.ota.version=$(shell date -u +%Y%m%d) \
  ro.modversion=$(ROM_VERSION)
