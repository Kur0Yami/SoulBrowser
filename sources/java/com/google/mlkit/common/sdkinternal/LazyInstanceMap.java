package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashMap;

@KeepForSdk
/* loaded from: classes3.dex */
public abstract class LazyInstanceMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12768a = new HashMap();

    public abstract Object a(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    public final Object b(Object obj) {
        synchronized (this.f12768a) {
            try {
                if (this.f12768a.containsKey(obj)) {
                    return this.f12768a.get(obj);
                }
                Object a2 = a(obj);
                this.f12768a.put(obj, a2);
                return a2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
