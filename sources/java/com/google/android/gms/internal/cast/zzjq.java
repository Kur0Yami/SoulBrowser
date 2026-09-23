package com.google.android.gms.internal.cast;

import android.os.Build;
import dalvik.system.VMStack;

/* loaded from: classes.dex */
public final class zzjq extends zzjm {

    /* renamed from: com.google.android.gms.internal.cast.zzjq$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends zzjl {
    }

    /* loaded from: classes.dex */
    final class zza {
    }

    static {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", null);
            zza.class.getName().equals(a());
        } catch (Throwable unused) {
        }
        String str = Build.FINGERPRINT;
        if (str != null) {
            "robolectric".equals(str);
        }
    }

    public static String a() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable unused) {
            return null;
        }
    }
}
