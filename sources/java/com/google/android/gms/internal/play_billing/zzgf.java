package com.google.android.gms.internal.play_billing;

import java.util.Map;

/* loaded from: classes3.dex */
final class zzgf implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Map.Entry f11508c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f11508c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzgi) this.f11508c.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzhc) {
            zzgi zzgiVar = (zzgi) this.f11508c.getValue();
            zzhc zzhcVar = zzgiVar.f11510a;
            zzgiVar.b = null;
            zzgiVar.f11510a = (zzhc) obj;
            return zzhcVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
