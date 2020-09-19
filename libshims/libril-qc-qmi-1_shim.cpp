// libril-qc-qmi-1_shim

#include <media/AudioSystem.h>
#include <string>
#include <cutils/log.h>

#define LOG_TAG "libril-qc-qmi-1_shim"

namespace android {

    static void setErrorCallback(audio_error_callback cb) {
        ALOGV("Hit shim! Now shimming libril-qc-qmi-1!");
        uintptr_t ptr = AudioSystem::addErrorCallback(cb);
        if (ptr == NULL) {
            ALOGE("Failed to add error callback!");
        }
    }

} // namespace android