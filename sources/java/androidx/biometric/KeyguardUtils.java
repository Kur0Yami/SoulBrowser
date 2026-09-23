package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
class KeyguardUtils {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api16Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
        @Nullable
        public static KeyguardManager a(@NonNull Context context) {
            return (KeyguardManager) context.getSystemService(KeyguardManager.class);
        }

        public static boolean b(@NonNull KeyguardManager keyguardManager) {
            return keyguardManager.isDeviceSecure();
        }
    }
}
