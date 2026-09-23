package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhdt extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final zzhds f8440a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhdr f8441c;
    public final zzhbf d;

    public zzhdt(zzhds zzhdsVar, String str, zzhdr zzhdrVar, zzhbf zzhbfVar) {
        this.f8440a = zzhdsVar;
        this.b = str;
        this.f8441c = zzhdrVar;
        this.d = zzhbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8440a != zzhds.f8438c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhdt)) {
            return false;
        }
        zzhdt zzhdtVar = (zzhdt) obj;
        if (!zzhdtVar.f8441c.equals(this.f8441c) || !zzhdtVar.d.equals(this.d) || !zzhdtVar.b.equals(this.b) || !zzhdtVar.f8440a.equals(this.f8440a)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhdt.class, this.b, this.f8441c, this.d, this.f8440a);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8441c);
        String valueOf2 = String.valueOf(this.d);
        String valueOf3 = String.valueOf(this.f8440a);
        String str = this.b;
        int length = String.valueOf(str).length();
        int length2 = valueOf.length();
        StringBuilder sb = new StringBuilder(length + 64 + length2 + 27 + valueOf2.length() + 11 + valueOf3.length() + 1);
        android.support.v4.media.a.z(sb, "LegacyKmsEnvelopeAead Parameters (kekUri: ", str, ", dekParsingStrategy: ", valueOf);
        android.support.v4.media.a.z(sb, ", dekParametersForNewKeys: ", valueOf2, ", variant: ", valueOf3);
        sb.append(")");
        return sb.toString();
    }
}
