package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzhti extends zzhts {
    public static final BigInteger g = BigInteger.valueOf(65537);

    /* renamed from: a, reason: collision with root package name */
    public final int f8767a;
    public final BigInteger b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhth f8768c;
    public final zzhtg d;
    public final zzhtg e;
    public final int f;

    public zzhti(int i, BigInteger bigInteger, zzhth zzhthVar, zzhtg zzhtgVar, zzhtg zzhtgVar2, int i2) {
        this.f8767a = i;
        this.b = bigInteger;
        this.f8768c = zzhthVar;
        this.d = zzhtgVar;
        this.e = zzhtgVar2;
        this.f = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8768c != zzhth.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhti)) {
            return false;
        }
        zzhti zzhtiVar = (zzhti) obj;
        if (zzhtiVar.f8767a != this.f8767a || !Objects.equals(zzhtiVar.b, this.b) || !Objects.equals(zzhtiVar.f8768c, this.f8768c) || !Objects.equals(zzhtiVar.d, this.d) || !Objects.equals(zzhtiVar.e, this.e) || zzhtiVar.f != this.f) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhti.class, Integer.valueOf(this.f8767a), this.b, this.f8768c, this.d, this.e, Integer.valueOf(this.f));
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8768c);
        String valueOf2 = String.valueOf(this.d);
        String valueOf3 = String.valueOf(this.e);
        String valueOf4 = String.valueOf(this.b);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int length3 = valueOf3.length();
        int i = this.f;
        int length4 = String.valueOf(i).length();
        int length5 = valueOf4.length();
        int i2 = this.f8767a;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 17 + length3 + 19 + length4 + 18 + length5 + 6 + String.valueOf(i2).length() + 13);
        android.support.v4.media.a.z(sb, "RSA SSA PSS Parameters (variant: ", valueOf, ", signature hashType: ", valueOf2);
        sb.append(", mgf1 hashType: ");
        sb.append(valueOf3);
        sb.append(", saltLengthBytes: ");
        sb.append(i);
        sb.append(", publicExponent: ");
        sb.append(valueOf4);
        sb.append(", and ");
        sb.append(i2);
        sb.append("-bit modulus)");
        return sb.toString();
    }
}
