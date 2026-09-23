package com.google.android.gms.internal.cast;

import java.util.Map;

/* loaded from: classes.dex */
final class zzyq implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Map.Entry f9884c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f9884c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzys) this.f9884c.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzzi) {
            zzys zzysVar = (zzys) this.f9884c.getValue();
            zzzi zzziVar = zzysVar.f9886a;
            zzysVar.b = null;
            zzysVar.f9886a = (zzzi) obj;
            return zzziVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
