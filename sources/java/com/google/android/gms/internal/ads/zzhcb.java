package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhcb extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final int f8373a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhca f8374c;

    public zzhcb(int i, int i2, zzhca zzhcaVar) {
        this.f8373a = i;
        this.b = i2;
        this.f8374c = zzhcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8374c != zzhca.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhcb)) {
            return false;
        }
        zzhcb zzhcbVar = (zzhcb) obj;
        if (zzhcbVar.f8373a != this.f8373a || zzhcbVar.b != this.b || zzhcbVar.f8374c != this.f8374c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhcb.class, Integer.valueOf(this.f8373a), Integer.valueOf(this.b), 16, this.f8374c);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8374c);
        int length = valueOf.length();
        int i = this.b;
        int length2 = String.valueOf(i).length();
        int length3 = String.valueOf(16).length();
        int i2 = this.f8373a;
        StringBuilder sb = new StringBuilder(android.support.v4.media.a.b(length + 30 + length2 + 10 + length3, 15, String.valueOf(i2).length(), 10));
        sb.append("AesEax Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        return androidx.work.impl.workers.a.t(sb, "-byte IV, 16-byte tag, and ", i2, "-byte key)");
    }
}
