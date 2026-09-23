package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhdj extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final String f8425a;
    public final zzhdi b;

    public zzhdj(String str, zzhdi zzhdiVar) {
        this.f8425a = str;
        this.b = zzhdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.b != zzhdi.f8423c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhdj)) {
            return false;
        }
        zzhdj zzhdjVar = (zzhdj) obj;
        if (!zzhdjVar.f8425a.equals(this.f8425a) || !zzhdjVar.b.equals(this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhdj.class, this.f8425a, this.b);
    }

    public final String toString() {
        String str = this.b.f8424a;
        String str2 = this.f8425a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 45 + str.length() + 1);
        android.support.v4.media.a.z(sb, "LegacyKmsAead Parameters (keyUri: ", str2, ", variant: ", str);
        sb.append(")");
        return sb.toString();
    }
}
