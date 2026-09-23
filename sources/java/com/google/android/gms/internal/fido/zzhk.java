package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzhk extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final long f10330c;

    public zzhk(long j) {
        this.f10330c = j;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (zza() != zzhpVar.zza()) {
            return zza() - zzhpVar.zza();
        }
        long abs = Math.abs(this.f10330c);
        long abs2 = Math.abs(((zzhk) zzhpVar).f10330c);
        if (abs < abs2) {
            return -1;
        }
        if (abs > abs2) {
            return 1;
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhk.class == obj.getClass() && this.f10330c == ((zzhk) obj).f10330c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zza()), Long.valueOf(this.f10330c)});
    }

    public final String toString() {
        return Long.toString(this.f10330c);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c(this.f10330c >= 0 ? (byte) 0 : (byte) 32);
    }
}
