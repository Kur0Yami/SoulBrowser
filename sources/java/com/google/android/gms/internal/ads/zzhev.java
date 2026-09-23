package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhev extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final zzheu f8478a;

    public zzhev(zzheu zzheuVar) {
        this.f8478a = zzheuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8478a != zzheu.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhev) || ((zzhev) obj).f8478a != this.f8478a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhev.class, this.f8478a);
    }

    public final String toString() {
        String str = this.f8478a.f8477a;
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 40), "XChaCha20Poly1305 Parameters (variant: ", str, ")");
    }
}
