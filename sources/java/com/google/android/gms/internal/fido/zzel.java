package com.google.android.gms.internal.fido;

import android.os.Build;
import dalvik.system.VMStack;

/* loaded from: classes3.dex */
public final class zzel extends zzeg {

    /* renamed from: com.google.android.gms.internal.fido.zzel$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends zzef {
    }

    /* loaded from: classes3.dex */
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
