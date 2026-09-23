package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhku extends zzhll {

    /* renamed from: a, reason: collision with root package name */
    public final int f8631a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhkt f8632c;

    public zzhku(int i, int i2, zzhkt zzhktVar) {
        this.f8631a = i;
        this.b = i2;
        this.f8632c = zzhktVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8632c != zzhkt.e;
    }

    public final int b() {
        zzhkt zzhktVar = zzhkt.e;
        int i = this.b;
        zzhkt zzhktVar2 = this.f8632c;
        if (zzhktVar2 == zzhktVar) {
            return i;
        }
        if (zzhktVar2 == zzhkt.b || zzhktVar2 == zzhkt.f8629c || zzhktVar2 == zzhkt.d) {
            return i + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhku)) {
            return false;
        }
        zzhku zzhkuVar = (zzhku) obj;
        if (zzhkuVar.f8631a != this.f8631a || zzhkuVar.b() != b() || zzhkuVar.f8632c != this.f8632c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhku.class, Integer.valueOf(this.f8631a), Integer.valueOf(this.b), this.f8632c);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8632c);
        int length = valueOf.length();
        int i = this.b;
        int length2 = String.valueOf(i).length();
        int i2 = this.f8631a;
        StringBuilder sb = new StringBuilder(length + 32 + length2 + 16 + String.valueOf(i2).length() + 10);
        sb.append("AES-CMAC Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        return androidx.work.impl.workers.a.t(sb, "-byte tags, and ", i2, "-byte key)");
    }
}
