#!/usr/bin/env bash
# Build the soulamz Android PIE binaries (libsoulamz.so) for arm64-v8a and armeabi-v7a.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="${ROOT_DIR}/native/soulamz"
OUT_DIR="${ROOT_DIR}/bundled-warp/lib"
ANDROID_HOME="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-${HOME}/android-sdk}}"
API_LEVEL="${SOULAMZ_API_LEVEL:-23}"

if ! command -v go >/dev/null 2>&1; then
  echo "error: go is required to build soulamz" >&2
  exit 1
fi

find_ndk() {
  if [[ -n "${ANDROID_NDK_HOME:-}" && -d "${ANDROID_NDK_HOME}" ]]; then
    echo "${ANDROID_NDK_HOME}"
    return 0
  fi
  if [[ -d "${ANDROID_HOME}/ndk" ]]; then
    local latest
    latest="$(ls -1 "${ANDROID_HOME}/ndk" 2>/dev/null | sort -V | tail -1 || true)"
    if [[ -n "${latest}" ]]; then
      echo "${ANDROID_HOME}/ndk/${latest}"
      return 0
    fi
  fi
  if [[ -d "${ANDROID_HOME}/ndk-bundle" ]]; then
    echo "${ANDROID_HOME}/ndk-bundle"
    return 0
  fi
  return 1
}

mkdir -p "${OUT_DIR}/arm64-v8a" "${OUT_DIR}/armeabi-v7a"

NDK="$(find_ndk || true)"
if [[ -z "${NDK}" ]]; then
  echo "error: Android NDK required to build soulamz (set ANDROID_NDK_HOME)" >&2
  exit 1
fi

CC_ARM64="${NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android${API_LEVEL}-clang"
CC_ARM="${NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi${API_LEVEL}-clang"
if [[ ! -x "${CC_ARM64}" ]]; then
  echo "error: NDK clang not found: ${CC_ARM64}" >&2
  exit 1
fi
if [[ ! -x "${CC_ARM}" ]]; then
  echo "error: NDK clang not found: ${CC_ARM}" >&2
  exit 1
fi

build_arm64() {
  echo "Building soulamz for android/arm64 (cgo + NDK)..."
  (
    cd "${SRC_DIR}"
    CGO_ENABLED=1 GOOS=android GOARCH=arm64 CC="${CC_ARM64}" \
      go build -trimpath -ldflags='-s -w' \
      -o "${OUT_DIR}/arm64-v8a/libsoulamz.so" .
  )
}

build_arm() {
  echo "Building soulamz for android/arm (GOARM=7, cgo + NDK)..."
  (
    cd "${SRC_DIR}"
    CGO_ENABLED=1 GOOS=android GOARCH=arm GOARM=7 CC="${CC_ARM}" \
      go build -trimpath -ldflags='-s -w' \
      -o "${OUT_DIR}/armeabi-v7a/libsoulamz.so" .
  )
}

build_arm64 &
pid_arm64=$!
build_arm &
pid_arm=$!
status=0
wait "${pid_arm64}" || status=$?
wait "${pid_arm}" || status=$?
if [[ "${status}" -ne 0 ]]; then
  exit "${status}"
fi

echo "soulamz binaries ready:"
ls -lh "${OUT_DIR}"/*/libsoulamz.so
chmod +x "${ROOT_DIR}/scripts/soulamz-stamp.sh"
"${ROOT_DIR}/scripts/soulamz-stamp.sh" write
