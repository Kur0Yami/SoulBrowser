package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzhh extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10328c;

    public zzhh(boolean z) {
        this.f10328c = z;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int i;
        zzhp zzhpVar = (zzhp) obj;
        int zza = zzhpVar.zza();
        int c2 = zzhp.c((byte) -32);
        if (c2 != zza) {
            return c2 - zzhpVar.zza();
        }
        zzhh zzhhVar = (zzhh) zzhpVar;
        int i2 = 21;
        if (true != this.f10328c) {
            i = 20;
        } else {
            i = 21;
        }
        if (true != zzhhVar.f10328c) {
            i2 = 20;
        }
        return i - i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhh.class == obj.getClass() && this.f10328c == ((zzhh) obj).f10328c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) -32)), Boolean.valueOf(this.f10328c)});
    }

    public final String toString() {
        return Boolean.toString(this.f10328c);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c((byte) -32);
    }
}
