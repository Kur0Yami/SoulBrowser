package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzap {

    /* renamed from: a, reason: collision with root package name */
    public final zzao[] f4304a;

    public zzap(zzao... zzaoVarArr) {
        this.f4304a = zzaoVarArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0024, code lost:
    
        if (r8.zza(r4) != false) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzgtd a(java.lang.Class r7, com.google.android.gms.internal.ads.zzgqb r8) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzgvs r0 = com.google.android.gms.internal.ads.zzgtd.f
            com.google.android.gms.internal.ads.zzgta r0 = new com.google.android.gms.internal.ads.zzgta
            r1 = 4
            r0.<init>(r1)
            com.google.android.gms.internal.ads.zzao[] r1 = r6.f4304a
            int r2 = r1.length
            r3 = 0
        Lc:
            if (r3 >= r2) goto L30
            r4 = r1[r3]
            java.lang.Class r5 = r4.getClass()
            boolean r5 = r7.isAssignableFrom(r5)
            if (r5 == 0) goto L27
            java.lang.Object r4 = r7.cast(r4)
            com.google.android.gms.internal.ads.zzao r4 = (com.google.android.gms.internal.ads.zzao) r4
            boolean r5 = r8.zza(r4)
            if (r5 == 0) goto L27
            goto L28
        L27:
            r4 = 0
        L28:
            if (r4 == 0) goto L2d
            r0.c(r4)
        L2d:
            int r3 = r3 + 1
            goto Lc
        L30:
            com.google.android.gms.internal.ads.zzgtd r7 = r0.f()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzap.a(java.lang.Class, com.google.android.gms.internal.ads.zzgqb):com.google.android.gms.internal.ads.zzgtd");
    }

    public final zzap b(zzap zzapVar) {
        if (zzapVar == null) {
            return this;
        }
        return c(zzapVar.f4304a);
    }

    public final zzap c(zzao... zzaoVarArr) {
        int length = zzaoVarArr.length;
        if (length == 0) {
            return this;
        }
        String str = zzfj.f7405a;
        zzao[] zzaoVarArr2 = this.f4304a;
        int length2 = zzaoVarArr2.length;
        Object[] copyOf = Arrays.copyOf(zzaoVarArr2, length2 + length);
        System.arraycopy(zzaoVarArr, 0, copyOf, length2, length);
        return new zzap((zzao[]) copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzap.class == obj.getClass() && Arrays.equals(this.f4304a, ((zzap) obj).f4304a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f4304a) * 31) + ((int) (-9223372034707292159L));
    }

    public final String toString() {
        String arrays = Arrays.toString(this.f4304a);
        return android.support.v4.media.a.q(new StringBuilder(String.valueOf(arrays).length() + 8), "entries=", arrays, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public zzap(List list) {
        this.f4304a = (zzao[]) list.toArray(new zzao[0]);
    }
}
