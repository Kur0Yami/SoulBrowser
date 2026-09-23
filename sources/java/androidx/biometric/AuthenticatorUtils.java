package androidx.biometric;

import android.os.Build;

/* loaded from: classes.dex */
class AuthenticatorUtils {
    public static boolean a(int i) {
        return (i & 32768) != 0;
    }

    public static boolean b(int i) {
        if (i != 15 && i != 255) {
            if (i != 32768) {
                if (i != 32783) {
                    if (i != 33023 && i != 0) {
                        return false;
                    }
                    return true;
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28 && i2 <= 29) {
                    return false;
                }
                return true;
            }
            if (Build.VERSION.SDK_INT < 30) {
                return false;
            }
            return true;
        }
        return true;
    }
}
