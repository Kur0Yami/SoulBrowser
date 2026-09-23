package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhbt extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final int f8358a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8359c;
    public final int d;
    public final zzhbs e;
    public final zzhbr f;

    public zzhbt(int i, int i2, int i3, int i4, zzhbs zzhbsVar, zzhbr zzhbrVar) {
        this.f8358a = i;
        this.b = i2;
        this.f8359c = i3;
        this.d = i4;
        this.e = zzhbsVar;
        this.f = zzhbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.e != zzhbs.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhbt)) {
            return false;
        }
        zzhbt zzhbtVar = (zzhbt) obj;
        if (zzhbtVar.f8358a != this.f8358a || zzhbtVar.b != this.b || zzhbtVar.f8359c != this.f8359c || zzhbtVar.d != this.d || zzhbtVar.e != this.e || zzhbtVar.f != this.f) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhbt.class, Integer.valueOf(this.f8358a), Integer.valueOf(this.b), Integer.valueOf(this.f8359c), Integer.valueOf(this.d), this.e, this.f);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.e);
        String valueOf2 = String.valueOf(this.f);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int i = this.f8359c;
        int length3 = String.valueOf(i).length();
        int i2 = this.d;
        int length4 = String.valueOf(i2).length();
        int i3 = this.f8358a;
        int length5 = String.valueOf(i3).length();
        int i4 = this.b;
        StringBuilder sb = new StringBuilder(length + 48 + length2 + 2 + length3 + 14 + length4 + 16 + length5 + 19 + String.valueOf(i4).length() + 15);
        android.support.v4.media.a.z(sb, "AesCtrHmacAead Parameters (variant: ", valueOf, ", hashType: ", valueOf2);
        androidx.work.impl.workers.a.A(sb, ", ", i, "-byte IV, and ", i2);
        androidx.work.impl.workers.a.A(sb, "-byte tags, and ", i3, "-byte AES key, and ", i4);
        sb.append("-byte HMAC key)");
        return sb.toString();
    }
}
