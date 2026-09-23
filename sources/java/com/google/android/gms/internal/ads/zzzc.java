package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzzc extends zzzm implements Comparable {
    public final int i;
    public final int j;

    public zzzc(int i, zzbg zzbgVar, int i2, zzzf zzzfVar, int i3) {
        super(i, zzbgVar, i2);
        int i4;
        this.i = a.n(i3, zzzfVar.B) ? 1 : 0;
        zzv zzvVar = this.h;
        int i5 = zzvVar.t;
        int i6 = -1;
        if (i5 != -1 && (i4 = zzvVar.u) != -1) {
            i6 = i5 * i4;
        }
        this.j = i6;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ boolean a(zzzm zzzmVar) {
        return false;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.j, ((zzzc) obj).j);
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final int zza() {
        return this.i;
    }
}
