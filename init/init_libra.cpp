/*
   Copyright (c) 2020, The LineageOS Project
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "property_service.h"
#include <fstream>
#include <sys/sysinfo.h>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_

#include <sys/_system_properties.h>

#define AQUA_BOARD_ID 30
#define LIBRA_BOARD_ID 12
#define BOARD_ID_PATH "/proc/device-tree/qcom,board-id"

using std::ifstream;

void property_override(const char *prop, const char *value)
{
    prop_info *info = (prop_info *)__system_property_find(prop);

    if (info)
    {
        __system_property_update(info, value, strlen(value));
    }
    else
    {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

inline void property_override_dual(const char *system_prop, const char *vendor_prop, const char *value)
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

uint8_t update_board_id()
{
    uint8_t board_id;

    /*
      qcom,board-id contains two 4-byte numbers,
      For libra, 00 00 00 0c and 00 00 00 00.
      For aqua, 00 00 00 1e and 00 00 00 00.
     */
    ifstream board_id_file(BOARD_ID_PATH, ifstream::binary);
    board_id_file.seekg(3); // Shift past the first 3 bytes, and only read the 4th one.
    board_id_file.read(reinterpret_cast<char *>(&board_id), 1);

    return board_id;
}

void set_init_values()
{
    struct sysinfo sys;
    sysinfo(&sys);

    if (sys.totalram > 2048ull * 1024 * 1024)
    {
        // from - phone-xxhdpi-3072-dalvik-heap.mk
        property_override("dalvik.vm.heapgrowthlimit", "288m");
        property_override("dalvik.vm.heapminfree", "512k");
        property_override("dalvik.vm.heapsize", "768m");
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("ro.product.ramsize", "3g");
    }
    else
    {
        // from - phone-xxhdpi-2048-dalvik-heap.mk
        property_override("dalvik.vm.heapgrowthlimit", "192m");
        property_override("dalvik.vm.heapminfree", "2m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heapstartsize", "16m");
        property_override("ro.product.ramsize", "2g");
    }
}

void vendor_load_properties()
{
    set_init_values();

    property_override("dalvik.vm.heapmaxfree", "8m");
    property_override("dalvik.vm.heaptargetutilization", "0.75");

    switch (update_board_id())
    {
    case LIBRA_BOARD_ID:
        property_override("ro.build.product", "libra");
        property_override_dual("ro.product.device", "ro.vendor.product.device", "libra");
        property_override_dual("ro.product.model", "ro.vendor.product.model", "Mi-4c");
        break;
    case AQUA_BOARD_ID:
        property_override("ro.build.product", "aqua");
        property_override_dual("ro.product.device", "ro.vendor.product.device", "aqua");
        property_override_dual("ro.product.model", "ro.vendor.product.model", "Mi-4s");
        break;
    }
}
