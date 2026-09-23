package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzhsw extends zzhts {
    public static final BigInteger e = BigInteger.valueOf(65537);

    /* renamed from: a, reason: collision with root package name */
    public final int f8745a;
    public final BigInteger b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhsv f8746c;
    public final zzhsu d;

    public zzhsw(int i, BigInteger bigInteger, zzhsv zzhsvVar, zzhsu zzhsuVar) {
        this.f8745a = i;
        this.b = bigInteger;
        this.f8746c = zzhsvVar;
        this.d = zzhsuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8746c != zzhsv.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhsw)) {
            return false;
        }
        zzhsw zzhswVar = (zzhsw) obj;
        if (zzhswVar.f8745a != this.f8745a || !Objects.equals(zzhswVar.b, this.b) || zzhswVar.f8746c != this.f8746c || zzhswVar.d != this.d) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhsw.class, Integer.valueOf(this.f8745a), this.b, this.f8746c, this.d);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8746c);
        String valueOf2 = String.valueOf(this.d);
        String valueOf3 = String.valueOf(this.b);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int length3 = valueOf3.length();
        int i = this.f8745a;
        StringBuilder sb = new StringBuilder(length + 47 + length2 + 18 + length3 + 6 + String.valueOf(i).length() + 13);
        android.support.v4.media.a.z(sb, "RSA SSA PKCS1 Parameters (variant: ", valueOf, ", hashType: ", valueOf2);
        sb.append(", publicExponent: ");
        sb.append(valueOf3);
        sb.append(", and ");
        sb.append(i);
        sb.append("-bit modulus)");
        return sb.toString();
    }
}
