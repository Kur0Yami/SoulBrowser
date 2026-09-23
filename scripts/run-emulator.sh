#!/usr/bin/env bash
# Boot the Soul Rebuild test AVD in Cloud Agent / nested-VM environments.
#
# Nested KVM is broken here (host kernel BUG in kvm_arch_vcpu_create), so this
# always uses software acceleration (-accel off / TCG). Cold boot is slow
# (~5–10 minutes).
#
# The APK ships ARM-only native libs. Use API 30 google_apis x86_64, which
# advertises arm64-v8a/armeabi-v7a via NDK translation. API 33 google_apis
# images fail install with INSTALL_FAILED_NO_MATCHING_ABIS.
set -euo pipefail

ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-$HOME/android-sdk}}"
export ANDROID_HOME ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

AVD_NAME="${AVD_NAME:-soul_test}"
SYS_IMAGE="system-images;android-30;google_apis;x86_64"

if [[ ! -d "$ANDROID_HOME/emulator" ]]; then
  echo "error: Android SDK emulator not found under $ANDROID_HOME" >&2
  exit 1
fi

if ! avdmanager list avd 2>/dev/null | grep -q "Name: ${AVD_NAME}"; then
  echo "Creating AVD ${AVD_NAME} (${SYS_IMAGE})..."
  if [[ ! -d "$ANDROID_HOME/system-images/android-30/google_apis/x86_64" ]]; then
    yes | sdkmanager "$SYS_IMAGE" "platforms;android-30" >/dev/null
  fi
  echo "no" | avdmanager create avd -n "$AVD_NAME" -k "$SYS_IMAGE" -d pixel_4 --force
  AVD_CFG="$HOME/.android/avd/${AVD_NAME}.avd/config.ini"
  sed -i \
    -e 's/^hw.lcd.height=.*/hw.lcd.height=1280/' \
    -e 's/^hw.lcd.width=.*/hw.lcd.width=720/' \
    -e 's/^hw.lcd.density=.*/hw.lcd.density=320/' \
    -e 's/^hw.ramSize=.*/hw.ramSize=2048/' \
    -e 's/^hw.cpu.ncore=.*/hw.cpu.ncore=2/' \
    -e 's/^hw.gpu.enabled=.*/hw.gpu.enabled=yes/' \
    -e 's/^hw.gpu.mode=.*/hw.gpu.mode=swiftshader_indirect/' \
    -e 's/^fastboot.forceColdBoot=.*/fastboot.forceColdBoot=yes/' \
    -e 's/^fastboot.forceFastBoot=.*/fastboot.forceFastBoot=no/' \
    -e 's/^firstboot.bootFromDownloadableSnapshot=.*/firstboot.bootFromDownloadableSnapshot=no/' \
    -e 's/^firstboot.bootFromLocalSnapshot=.*/firstboot.bootFromLocalSnapshot=no/' \
    -e 's/^firstboot.saveToLocalSnapshot=.*/firstboot.saveToLocalSnapshot=no/' \
    "$AVD_CFG"
fi

# Do not use pkill -f 'emulator' — it matches the calling shell cmdline.
killall -9 qemu-system-x86_64-headless 2>/dev/null || true
adb start-server

if [[ -z "${DISPLAY:-}" ]] && command -v Xvfb >/dev/null; then
  if ! pgrep -x Xvfb >/dev/null; then
    Xvfb :99 -screen 0 1280x800x24 -ac >/tmp/xvfb-soul.log 2>&1 &
    sleep 1
  fi
  export DISPLAY=:99
fi

echo "Starting emulator ${AVD_NAME} with -accel off (TCG)..."
exec emulator -avd "$AVD_NAME" \
  -no-window -no-audio -no-boot-anim \
  -gpu swiftshader_indirect \
  -no-snapshot-load -no-snapshot-save \
  -accel off -cores 2 -memory 2048 "$@"
