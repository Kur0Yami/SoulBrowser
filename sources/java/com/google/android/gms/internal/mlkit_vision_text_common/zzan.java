package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
abstract class zzan implements zzcc {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f11126c;
    public transient Map f;

    public abstract Map c();

    public abstract Set d();

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcc)) {
            return false;
        }
        return zzn().equals(((zzcc) obj).zzn());
    }

    public final int hashCode() {
        return zzn().hashCode();
    }

    public final String toString() {
        return zzn().toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcc
    public final Map zzn() {
        Map map = this.f;
        if (map == null) {
            Map c2 = c();
            this.f = c2;
            return c2;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcc
    public final Set zzo() {
        Set set = this.f11126c;
        if (set == null) {
            Set d = d();
            this.f11126c = d;
            return d;
        }
        return set;
    }
}
