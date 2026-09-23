package com.google.android.gms.internal.consent_sdk;

import java.util.Map;

/* loaded from: classes.dex */
final class zzqw implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Map.Entry f10087c;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f10087c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzqz) this.f10087c.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzrq) {
            zzqz zzqzVar = (zzqz) this.f10087c.getValue();
            zzrq zzrqVar = zzqzVar.f10090a;
            zzqzVar.b = null;
            zzqzVar.f10090a = (zzrq) obj;
            return zzrqVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
