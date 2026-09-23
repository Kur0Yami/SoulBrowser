package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes3.dex */
public final class zzod {

    /* renamed from: a, reason: collision with root package name */
    public final zzob f11384a;
    public final Integer b;

    public /* synthetic */ zzod(zzoa zzoaVar) {
        this.f11384a = zzoaVar.f11382a;
        this.b = zzoaVar.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzod)) {
            return false;
        }
        zzod zzodVar = (zzod) obj;
        if (Objects.equal(this.f11384a, zzodVar.f11384a) && Objects.equal(this.b, zzodVar.b) && Objects.equal(null, null) && Objects.equal(null, null)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f11384a, this.b, null, null);
    }
}
