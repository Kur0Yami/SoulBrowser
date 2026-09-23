package com.google.android.gms.internal.cast;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
final class zzjk {
    static {
        zzjq zzjqVar;
        try {
            zzjqVar = zzjr.f9741a;
        } catch (NoClassDefFoundError unused) {
            zzjqVar = null;
        }
        if (zzjqVar == null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 3; i++) {
                String str = zzjm.f9740a[i];
                try {
                    return;
                } catch (Throwable th) {
                    th = th;
                    sb.append('\n');
                    sb.append(str);
                    sb.append(": ");
                    if (th instanceof InvocationTargetException) {
                        th = th.getCause();
                    }
                    sb.append(th);
                }
            }
            throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
        }
    }
}
