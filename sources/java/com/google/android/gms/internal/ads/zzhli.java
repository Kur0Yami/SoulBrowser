package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhli extends zzhll {

    /* renamed from: a, reason: collision with root package name */
    public final int f8651a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhlh f8652c;
    public final zzhlg d;

    public zzhli(int i, int i2, zzhlh zzhlhVar, zzhlg zzhlgVar) {
        this.f8651a = i;
        this.b = i2;
        this.f8652c = zzhlhVar;
        this.d = zzhlgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8652c != zzhlh.e;
    }

    public final int b() {
        zzhlh zzhlhVar = zzhlh.e;
        int i = this.b;
        zzhlh zzhlhVar2 = this.f8652c;
        if (zzhlhVar2 == zzhlhVar) {
            return i;
        }
        if (zzhlhVar2 == zzhlh.b || zzhlhVar2 == zzhlh.f8649c || zzhlhVar2 == zzhlh.d) {
            return i + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhli)) {
            return false;
        }
        zzhli zzhliVar = (zzhli) obj;
        if (zzhliVar.f8651a != this.f8651a || zzhliVar.b() != b() || zzhliVar.f8652c != this.f8652c || zzhliVar.d != this.d) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhli.class, Integer.valueOf(this.f8651a), Integer.valueOf(this.b), this.f8652c, this.d);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8652c);
        String valueOf2 = String.valueOf(this.d);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int i = this.b;
        int length3 = String.valueOf(i).length();
        int i2 = this.f8651a;
        StringBuilder sb = new StringBuilder(length + 38 + length2 + 2 + length3 + 16 + String.valueOf(i2).length() + 10);
        android.support.v4.media.a.z(sb, "HMAC Parameters (variant: ", valueOf, ", hashType: ", valueOf2);
        androidx.work.impl.workers.a.A(sb, ", ", i, "-byte tags, and ", i2);
        sb.append("-byte key)");
        return sb.toString();
    }
}
