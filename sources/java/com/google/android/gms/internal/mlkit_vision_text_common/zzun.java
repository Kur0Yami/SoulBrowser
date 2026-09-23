package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;

/* loaded from: classes3.dex */
public final class zzun {

    /* renamed from: a, reason: collision with root package name */
    public static zzum f11431a;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.mlkit.common.sdkinternal.LazyInstanceMap, com.google.android.gms.internal.mlkit_vision_text_common.zzum] */
    public static synchronized zzuc a(zztu zztuVar) {
        zzuc zzucVar;
        synchronized (zzun.class) {
            try {
                if (f11431a == null) {
                    f11431a = new LazyInstanceMap();
                }
                zzucVar = (zzuc) f11431a.b(zztuVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzucVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzto, java.lang.Object] */
    public static synchronized zzuc b(String str) {
        zzuc a2;
        synchronized (zzun.class) {
            ?? obj = new Object();
            if (str != null) {
                obj.f11411a = str;
                obj.b = true;
                byte b = (byte) (obj.d | 1);
                obj.f11412c = 1;
                obj.d = (byte) (b | 2);
                a2 = a(obj.a());
            } else {
                throw new NullPointerException("Null libraryName");
            }
        }
        return a2;
    }
}
