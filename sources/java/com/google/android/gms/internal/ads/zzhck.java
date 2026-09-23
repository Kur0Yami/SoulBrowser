package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhck extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final int f8388a;
    public final zzhcj b;

    public zzhck(int i, zzhcj zzhcjVar) {
        this.f8388a = i;
        this.b = zzhcjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.b != zzhcj.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhck)) {
            return false;
        }
        zzhck zzhckVar = (zzhck) obj;
        if (zzhckVar.f8388a != this.f8388a || zzhckVar.b != this.b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhck.class, Integer.valueOf(this.f8388a), 12, 16, this.b);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.b);
        int length = valueOf.length();
        int length2 = String.valueOf(12).length();
        int length3 = String.valueOf(16).length();
        int i = this.f8388a;
        StringBuilder sb = new StringBuilder(android.support.v4.media.a.b(length + 30 + length2 + 10 + length3, 15, String.valueOf(i).length(), 10));
        sb.append("AesGcm Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", 12-byte IV, 16-byte tag, and ");
        sb.append(i);
        sb.append("-byte key)");
        return sb.toString();
    }
}
