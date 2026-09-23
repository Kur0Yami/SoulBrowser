package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzbbi {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4533a = new HashMap();

    public final AtomicReference a(String str) {
        synchronized (this) {
            try {
                HashMap hashMap = this.f4533a;
                if (!hashMap.containsKey(str)) {
                    hashMap.put(str, new AtomicReference());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (AtomicReference) this.f4533a.get(str);
    }
}
