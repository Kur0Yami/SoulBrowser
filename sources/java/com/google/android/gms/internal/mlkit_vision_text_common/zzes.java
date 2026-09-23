package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes3.dex */
public final class zzes {

    /* renamed from: a, reason: collision with root package name */
    public final zzou f11161a;
    public final Boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final zzsd f11162c;

    public /* synthetic */ zzes(zzeq zzeqVar) {
        this.f11161a = zzeqVar.f11159a;
        this.b = zzeqVar.b;
        this.f11162c = zzeqVar.f11160c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzes)) {
            return false;
        }
        zzes zzesVar = (zzes) obj;
        if (Objects.equal(this.f11161a, zzesVar.f11161a) && Objects.equal(null, null) && Objects.equal(this.b, zzesVar.b) && Objects.equal(null, null) && Objects.equal(this.f11162c, zzesVar.f11162c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f11161a, null, this.b, null, this.f11162c);
    }
}
