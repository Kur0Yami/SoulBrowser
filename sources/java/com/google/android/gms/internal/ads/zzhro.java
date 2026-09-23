package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhro extends zzhts {

    /* renamed from: a, reason: collision with root package name */
    public final zzhrn f8707a;

    public zzhro(zzhrn zzhrnVar) {
        this.f8707a = zzhrnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8707a != zzhrn.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhro) || ((zzhro) obj).f8707a != this.f8707a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhro.class, this.f8707a);
    }

    public final String toString() {
        String str = this.f8707a.f8706a;
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 30), "Ed25519 Parameters (variant: ", str, ")");
    }
}
