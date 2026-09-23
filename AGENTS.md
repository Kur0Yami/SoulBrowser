# AGENTS.md

## Cursor Cloud specific instructions

This repo rebuilds a signed Android APK (Soul Browser / “Soul Rebuild”) from Apktool smali sources. There is **no web server, package manager, or long-running app service**.

### Build (primary workflow)

- Tracked `app/` sources use the **testing** application ID (`net.kaki87.soul2.testing`, Soul2⁺ Browser). Stable releases (`net.kaki87.soul2`) are produced only when CI builds a tag whose commit is on `main` and sets `SOUL_PACKAGE_ID=net.kaki87.soul2`. Plain pushes to `main` skip the APK job.
- `app/res/values/build_date.xml` and `app/res/values/soul2_info.xml` are generated at build time (gitignored). INFO screen text comes from the README `<!-- BEGIN INFO -->` block; `scripts/prepare-info-string.py` writes the XML for Apktool.
- `bundled-warp/lib/` is gitignored for local `git add` but remains in the repo; CI updates it with `git add -f` when `soulamz.inputs` changes.
- OCR/WARP dex prebuilts live under `prebuilts/` (tracked; CI updates when `prebuilts/tooling.inputs` changes).
- Run `./scripts/build.sh` (see README). Requires Java 21+, `curl`, `zip`/`unzip`, `keytool`, and Android SDK **build-tools** with `apksigner` on `PATH` (or via `ANDROID_HOME` / `ANDROID_SDK_ROOT`).
- In this environment the SDK lives at `$HOME/android-sdk` (build-tools `35.0.0`). Ensure `ANDROID_HOME` / `ANDROID_SDK_ROOT` are set before building.
- Output: signed APK under `dist/` (also intermediate unsigned/aligned copies). Signature schemes v1+v2+v3 are required (targetSdk 36).
- `apktool` JAR is auto-downloaded into `tools/` by the build script; that directory is gitignored.
- There is no separate lint/test suite; the practical checks are a successful `./scripts/build.sh` plus `apksigner verify` on the produced APK.

### Emulator (nested Cloud Agent VMs)

**Do not use `-accel on` / KVM here.** The host hits `kernel BUG at arch/x86/kvm/x86.c` (`kvm_spurious_fault` during `kvm_arch_vcpu_create`). QEMU stays nearly idle and `adb` never leaves `offline`. Always boot with **`-accel off`** (TCG). Cold boot takes roughly 5–10 minutes.

**ABI:** The APK’s native libs are ARM-only. Use **`system-images;android-30;google_apis;x86_64`** (NDK translation; `ro.product.cpu.abilist` includes `arm64-v8a,armeabi-v7a`). API 33 `google_apis` x86_64 fails with `INSTALL_FAILED_NO_MATCHING_ABIS`.

Helper: `./scripts/run-emulator.sh` (creates the `soul_test` AVD if needed, then starts the emulator). Start `adb` first; avoid `pkill -f emulator` (it can kill the calling shell). Prefer `killall qemu-system-x86_64-headless`.

Smoke after boot:

```bash
adb wait-for-device
adb shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 2; done'
adb install -r -g dist/soul-browser-*.apk
adb shell am start -a android.intent.action.VIEW -d 'https://example.com/' \
  -n net.kaki87.soul2/com.mycompany.app.web.WebLauncher
# First launch shows onboarding; tap Start (id/splash_apply_view, center ~360,1014 on 720x1280)
```

For non-`main` builds the application ID is `net.kaki87.soul2.testing`. Smoke tests on a stable APK use `net.kaki87.soul2` in the `am start` component name.

System UI may ANR under TCG; dismiss Wait/Close and retry. Prefer build + `apksigner verify` when on-device UI is not required.
