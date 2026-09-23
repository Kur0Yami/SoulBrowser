package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
final class zzxh implements zzxw {

    /* renamed from: a, reason: collision with root package name */
    public final int f9361a;
    public final /* synthetic */ zzxk b;

    public zzxh(zzxk zzxkVar, int i) {
        this.b = zzxkVar;
        this.f9361a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        if (r8 == (-1)) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.zzxw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(long r12) {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzxk r0 = r11.b
            int r1 = r11.f9361a
            boolean r2 = r0.n()
            r3 = 0
            if (r2 == 0) goto Lc
            return r3
        Lc:
            r0.l(r1)
            com.google.android.gms.internal.ads.zzxv[] r2 = r0.v
            r4 = r2[r1]
            boolean r2 = r0.P
            monitor-enter(r4)
            int r5 = r4.r     // Catch: java.lang.Throwable -> L4b
            r6 = r5
            int r5 = r4.k(r6)     // Catch: java.lang.Throwable -> L4b
            int r7 = r4.r     // Catch: java.lang.Throwable -> L4b
            int r8 = r4.o     // Catch: java.lang.Throwable -> L4b
            if (r7 == r8) goto L25
            r7 = 1
            goto L26
        L25:
            r7 = r3
        L26:
            if (r7 == 0) goto L4e
            long[] r7 = r4.m     // Catch: java.lang.Throwable -> L4b
            r9 = r7[r5]     // Catch: java.lang.Throwable -> L4b
            int r7 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
            if (r7 >= 0) goto L31
            goto L4e
        L31:
            long r9 = r4.u     // Catch: java.lang.Throwable -> L4b
            int r7 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
            if (r7 <= 0) goto L3d
            if (r2 != 0) goto L3a
            goto L3d
        L3a:
            int r8 = r8 - r6
            monitor-exit(r4)
            goto L50
        L3d:
            int r6 = r8 - r6
            r9 = 1
            r7 = r12
            int r8 = r4.i(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L4b
            r12 = -1
            monitor-exit(r4)
            if (r8 != r12) goto L50
        L49:
            r8 = r3
            goto L50
        L4b:
            r0 = move-exception
            r12 = r0
            goto L5a
        L4e:
            monitor-exit(r4)
            goto L49
        L50:
            r4.q(r8)
            if (r8 != 0) goto L59
            r0.m(r1)
            return r3
        L59:
            return r8
        L5a:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L4b
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxh.a(long):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ef, code lost:
    
        if (r0 != 0) goto L74;
     */
    @Override // com.google.android.gms.internal.ads.zzxw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(com.google.android.gms.internal.ads.zzle r18, com.google.android.gms.internal.ads.zzih r19, int r20) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxh.b(com.google.android.gms.internal.ads.zzle, com.google.android.gms.internal.ads.zzih, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final boolean zzb() {
        zzxk zzxkVar = this.b;
        if (!zzxkVar.n() && zzxkVar.v[this.f9361a].o(zzxkVar.P)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final void zzc() {
        int i;
        IOException iOException;
        int i2 = this.f9361a;
        zzxk zzxkVar = this.b;
        zztd zztdVar = zzxkVar.v[i2].g;
        if (zztdVar == null) {
            if (zzxkVar.F == 7) {
                i = 6;
            } else {
                i = 3;
            }
            zzaaz zzaazVar = zzxkVar.n;
            IOException iOException2 = zzaazVar.f3860c;
            if (iOException2 == null) {
                zzaau zzaauVar = zzaazVar.b;
                if (zzaauVar != null && (iOException = zzaauVar.g) != null && zzaauVar.h > i) {
                    throw iOException;
                }
                return;
            }
            throw iOException2;
        }
        throw zztdVar.zza();
    }
}
