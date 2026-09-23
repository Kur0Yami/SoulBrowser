package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzc {
    public static final zzc b = new zzc(new zza[0]);

    /* renamed from: c, reason: collision with root package name */
    public static final zza f4992c;

    /* renamed from: a, reason: collision with root package name */
    public final zza[] f4993a;

    static {
        zza zzaVar = new zza(-1, new int[0], new zzak[0], new long[0], new String[0], new zzb[0]);
        int[] iArr = zzaVar.d;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = zzaVar.e;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        zzak[] zzakVarArr = (zzak[]) Arrays.copyOf(zzaVar.f3842c, 0);
        String[] strArr = (String[]) Arrays.copyOf(zzaVar.f, 0);
        zzb[] zzbVarArr = zzaVar.g;
        f4992c = new zza(0, copyOf, zzakVarArr, copyOf2, strArr, (zzb[]) Arrays.copyOf(zzbVarArr, Math.max(0, zzbVarArr.length)));
        String str = zzfj.f7405a;
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public zzc(zza[] zzaVarArr) {
        this.f4993a = zzaVarArr;
    }

    public final zza a(int i) {
        if (i < 0) {
            return f4992c;
        }
        return this.f4993a[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzc.class == obj.getClass() && Arrays.equals(this.f4993a, ((zzc) obj).f4993a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f4993a) + (((int) (-9223372036854775807L)) * 961);
    }

    public final String toString() {
        return android.support.v4.media.a.C("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[", "])");
    }
}
