package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhcz extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final zzhcy f8410a;

    public zzhcz(zzhcy zzhcyVar) {
        this.f8410a = zzhcyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8410a != zzhcy.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhcz) || ((zzhcz) obj).f8410a != this.f8410a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhcz.class, this.f8410a);
    }

    public final String toString() {
        String str = this.f8410a.f8409a;
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 39), "ChaCha20Poly1305 Parameters (variant: ", str, ")");
    }
}
