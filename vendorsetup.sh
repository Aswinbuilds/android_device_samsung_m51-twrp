#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

add_lunch_combo twrp_m51-user
add_lunch_combo twrp_m51-userdebug
add_lunch_combo twrp_m51-eng

#CCACHE
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/cache
ccache -M 15G
