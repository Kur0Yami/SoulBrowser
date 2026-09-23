package com.google.android.gms.internal.fido;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
final class zzee {
    static {
        zzeg zzegVar;
        try {
            zzegVar = zzeh.a();
        } catch (NoClassDefFoundError unused) {
            zzegVar = null;
        }
        if (zzegVar == null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 3; i++) {
                String str = zzeg.f10300a[i];
                try {
                    return;
                } catch (Throwable th) {
                    th = th;
                    if (th instanceof InvocationTargetException) {
                        th = th.getCause();
                    }
                    sb.append('\n');
                    sb.append(str);
                    sb.append(": ");
                    sb.append(th);
                }
            }
            throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
        }
    }
}
