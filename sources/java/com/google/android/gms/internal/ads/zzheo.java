package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzheo extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final zzhen f8468a;
    public final int b;

    public zzheo(zzhen zzhenVar, int i) {
        this.f8468a = zzhenVar;
        this.b = i;
    }

    public static zzheo b(zzhen zzhenVar, int i) {
        if (i >= 8 && i <= 12) {
            return new zzheo(zzhenVar, i);
        }
        throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.f8468a != zzhen.f8466c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzheo)) {
            return false;
        }
        zzheo zzheoVar = (zzheo) obj;
        if (zzheoVar.f8468a != this.f8468a || zzheoVar.b != this.b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzheo.class, this.f8468a, Integer.valueOf(this.b));
    }

    public final String toString() {
        String str = this.f8468a.f8467a;
        int length = str.length();
        int i = this.b;
        StringBuilder sb = new StringBuilder(length + 48 + String.valueOf(i).length() + 1);
        sb.append("X-AES-GCM Parameters (variant: ");
        sb.append(str);
        sb.append("salt_size_bytes: ");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }
}
