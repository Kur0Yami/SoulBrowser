package com.google.android.gms.internal.drive;

import java.util.Map;

/* loaded from: classes.dex */
final class zzkv<K> implements Map.Entry<K, Object> {

    /* renamed from: c, reason: collision with root package name */
    public Map.Entry f10226c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f10226c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzkt) this.f10226c.getValue()) == null) {
            return null;
        }
        int i = zzkt.f10225c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzlq) {
            zzkt zzktVar = (zzkt) this.f10226c.getValue();
            zzlq zzlqVar = zzktVar.f10228a;
            zzktVar.b = null;
            zzktVar.f10228a = (zzlq) obj;
            return zzlqVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
