package com.google.android.gms.internal.mlkit_vision_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;

/* loaded from: classes3.dex */
public final class zzms {

    /* renamed from: a, reason: collision with root package name */
    public static zzmr f11116a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.mlkit.common.sdkinternal.LazyInstanceMap, com.google.android.gms.internal.mlkit_vision_common.zzmr] */
    public static synchronized zzmj a(zzme zzmeVar) {
        zzmj zzmjVar;
        synchronized (zzms.class) {
            try {
                if (f11116a == null) {
                    f11116a = new LazyInstanceMap();
                }
                zzmjVar = (zzmj) f11116a.b(zzmeVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzmjVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_common.zzly] */
    public static synchronized zzmj b() {
        zzmj a2;
        synchronized (zzms.class) {
            ?? obj = new Object();
            obj.f11099a = "vision-common";
            obj.b = true;
            byte b = (byte) (obj.d | 1);
            obj.f11100c = 1;
            obj.d = (byte) (b | 2);
            a2 = a(obj.a());
        }
        return a2;
    }
}
