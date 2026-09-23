package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;

/* loaded from: classes3.dex */
public final class zzss {

    /* renamed from: a, reason: collision with root package name */
    public static zzsr f10912a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.mlkit_common.zzsr, com.google.mlkit.common.sdkinternal.LazyInstanceMap] */
    public static synchronized zzsh a(zzsb zzsbVar) {
        zzsh zzshVar;
        synchronized (zzss.class) {
            try {
                if (f10912a == null) {
                    f10912a = new LazyInstanceMap();
                }
                zzshVar = (zzsh) f10912a.b(zzsbVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzshVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.mlkit_common.zzrs, java.lang.Object] */
    public static synchronized zzsh b() {
        zzsh a2;
        synchronized (zzss.class) {
            ?? obj = new Object();
            obj.f10898a = "common";
            obj.b = true;
            byte b = (byte) (obj.d | 1);
            obj.f10899c = 1;
            obj.d = (byte) (b | 2);
            a2 = a(obj.a());
        }
        return a2;
    }
}
