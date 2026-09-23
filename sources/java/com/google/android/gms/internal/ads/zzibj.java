package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzibj implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Map.Entry f8920c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8920c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzibl) this.f8920c.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzicc) {
            zzibl zziblVar = (zzibl) this.f8920c.getValue();
            zzicc zziccVar = zziblVar.f8922a;
            zziblVar.b = null;
            zziblVar.f8922a = (zzicc) obj;
            return zziccVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
