package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;

/* loaded from: classes3.dex */
public final class zzoj {

    /* renamed from: a, reason: collision with root package name */
    public static zzoi f10635a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.mlkit.common.sdkinternal.LazyInstanceMap, com.google.android.gms.internal.mlkit_code_scanner.zzoi] */
    public static synchronized zzny a(zznt zzntVar) {
        zzny zznyVar;
        synchronized (zzoj.class) {
            try {
                if (f10635a == null) {
                    f10635a = new LazyInstanceMap();
                }
                zznyVar = (zzny) f10635a.b(zzntVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zznyVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_code_scanner.zznn] */
    public static synchronized zzny b() {
        zzny a2;
        synchronized (zzoj.class) {
            ?? obj = new Object();
            obj.f10616a = "play-services-code-scanner";
            obj.b = true;
            byte b = (byte) (obj.d | 1);
            obj.f10617c = 1;
            obj.d = (byte) (b | 2);
            a2 = a(obj.a());
        }
        return a2;
    }
}
