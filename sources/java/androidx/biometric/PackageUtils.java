package androidx.biometric;

import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
class PackageUtils {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
        public static boolean a(@NonNull PackageManager packageManager) {
            return packageManager.hasSystemFeature("android.hardware.fingerprint");
        }
    }
}
