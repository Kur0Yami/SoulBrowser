package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzpb {

    /* renamed from: a, reason: collision with root package name */
    public final String f9151a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public long f9152c;
    public final zzwg d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ zzpc g;

    public zzpb(zzpc zzpcVar, String str, int i, zzwg zzwgVar) {
        long j;
        this.g = zzpcVar;
        this.f9151a = str;
        this.b = i;
        if (zzwgVar == null) {
            j = -1;
        } else {
            j = zzwgVar.d;
        }
        this.f9152c = j;
        if (zzwgVar != null && zzwgVar.b()) {
            this.d = zzwgVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 < r9.a()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.zzbf r8, com.google.android.gms.internal.ads.zzbf r9) {
        /*
            r7 = this;
            int r0 = r7.b
            int r1 = r8.a()
            r2 = 0
            r3 = -1
            if (r0 < r1) goto L13
            int r8 = r9.a()
            if (r0 >= r8) goto L11
            goto L38
        L11:
            r0 = r3
            goto L38
        L13:
            com.google.android.gms.internal.ads.zzpc r1 = r7.g
            com.google.android.gms.internal.ads.zzbe r4 = r1.f9153a
            r5 = 0
            r8.b(r0, r4, r5)
            int r0 = r4.k
        L1e:
            int r5 = r4.l
            if (r0 > r5) goto L11
            java.lang.Object r5 = r8.f(r0)
            int r5 = r9.e(r5)
            if (r5 == r3) goto L35
            com.google.android.gms.internal.ads.zzbd r8 = r1.b
            com.google.android.gms.internal.ads.zzbd r8 = r9.d(r5, r8, r2)
            int r0 = r8.f4558c
            goto L38
        L35:
            int r0 = r0 + 1
            goto L1e
        L38:
            r7.b = r0
            if (r0 != r3) goto L3d
            goto L4c
        L3d:
            com.google.android.gms.internal.ads.zzwg r8 = r7.d
            if (r8 != 0) goto L42
            goto L4a
        L42:
            java.lang.Object r8 = r8.f9337a
            int r8 = r9.e(r8)
            if (r8 == r3) goto L4c
        L4a:
            r8 = 1
            return r8
        L4c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpb.a(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzbf):boolean");
    }

    public final boolean b(zzmv zzmvVar) {
        zzwg zzwgVar = zzmvVar.d;
        if (zzwgVar == null) {
            if (this.b != zzmvVar.f9128c) {
                return true;
            }
            return false;
        }
        long j = this.f9152c;
        if (j != -1) {
            long j2 = zzwgVar.d;
            if (j2 <= j) {
                zzwg zzwgVar2 = this.d;
                if (zzwgVar2 != null) {
                    zzbf zzbfVar = zzmvVar.b;
                    int e = zzbfVar.e(zzwgVar.f9337a);
                    int e2 = zzbfVar.e(zzwgVar2.f9337a);
                    long j3 = zzwgVar2.d;
                    int i = zzwgVar2.b;
                    if (j2 >= j3 && e >= e2) {
                        if (e <= e2) {
                            if (zzwgVar.b()) {
                                int i2 = zzwgVar.b;
                                int i3 = zzwgVar.f9338c;
                                if (i2 <= i) {
                                    if (i2 == i && i3 > zzwgVar2.f9338c) {
                                        return true;
                                    }
                                    return false;
                                }
                                return true;
                            }
                            int i4 = zzwgVar.e;
                            if (i4 == -1 || i4 > i) {
                                return true;
                            }
                            return false;
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
        return false;
    }
}
