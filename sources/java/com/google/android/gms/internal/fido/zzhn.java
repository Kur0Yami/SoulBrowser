package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzhn extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final String f10333c;

    public zzhn(String str) {
        this.f10333c = str;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int zza = zzhpVar.zza();
        int c2 = zzhp.c((byte) 96);
        if (c2 != zza) {
            return c2 - zzhpVar.zza();
        }
        String str = ((zzhn) zzhpVar).f10333c;
        int length = str.length();
        String str2 = this.f10333c;
        if (str2.length() != length) {
            return str2.length() - str.length();
        }
        return str2.compareTo(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhn.class != obj.getClass()) {
            return false;
        }
        return this.f10333c.equals(((zzhn) obj).f10333c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) 96)), this.f10333c});
    }

    public final String toString() {
        return a.p(new StringBuilder("\""), this.f10333c, "\"");
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c((byte) 96);
    }
}
