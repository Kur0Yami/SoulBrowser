package com.google.android.gms.internal.ads;

import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzany implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzanz f4257a = new zzanz(null, 0, "audio/ac4");
    public final zzer b = new zzer(16384);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4258c;

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.f4258c = false;
        this.f4257a.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.google.android.gms.internal.ads.zzaep r15) {
        /*
            r14 = this;
            com.google.android.gms.internal.ads.zzer r0 = new com.google.android.gms.internal.ads.zzer
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = r2
        L9:
            byte[] r4 = r0.f6834a
            r5 = r15
            com.google.android.gms.internal.ads.zzaef r5 = (com.google.android.gms.internal.ads.zzaef) r5
            r5.m(r4, r2, r1, r2)
            r0.E(r2)
            int r4 = r0.O()
            r6 = 4801587(0x494433, float:6.728456E-39)
            r7 = 3
            if (r4 == r6) goto L8f
            r5.f = r2
            r5.e(r3, r2)
            r15 = r2
            r1 = r3
        L25:
            byte[] r4 = r0.f6834a
            r6 = 7
            r5.m(r4, r2, r6, r2)
            r0.E(r2)
            int r4 = r0.L()
            r8 = 44096(0xac40, float:6.1792E-41)
            r9 = 44097(0xac41, float:6.1793E-41)
            if (r4 == r8) goto L4b
            if (r4 == r9) goto L4b
            r5.f = r2
            int r1 = r1 + 1
            int r15 = r1 - r3
            r4 = 8192(0x2000, float:1.148E-41)
            if (r15 >= r4) goto L88
            r5.e(r1, r2)
            r15 = r2
            goto L25
        L4b:
            r8 = 1
            int r15 = r15 + r8
            r10 = 4
            if (r15 < r10) goto L51
            return r8
        L51:
            byte[] r8 = r0.f6834a
            int r11 = r8.length
            r12 = -1
            if (r11 >= r6) goto L59
            r11 = r12
            goto L86
        L59:
            r11 = 2
            r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            r13 = r8[r7]
            int r11 = r11 << 8
            r13 = r13 & 255(0xff, float:3.57E-43)
            r11 = r11 | r13
            r13 = 65535(0xffff, float:9.1834E-41)
            if (r11 != r13) goto L80
            r10 = r8[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            r11 = 5
            r11 = r8[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r10 = r10 << 16
            int r11 = r11 << 8
            r13 = 6
            r8 = r8[r13]
            r8 = r8 & 255(0xff, float:3.57E-43)
            r10 = r10 | r11
            r11 = r10 | r8
            goto L81
        L80:
            r6 = r10
        L81:
            if (r4 != r9) goto L85
            int r6 = r6 + 2
        L85:
            int r11 = r11 + r6
        L86:
            if (r11 != r12) goto L89
        L88:
            return r2
        L89:
            int r11 = r11 + (-7)
            r5.e(r11, r2)
            goto L25
        L8f:
            r0.G(r7)
            int r4 = r0.g()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.e(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzany.d(com.google.android.gms.internal.ads.zzaep):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        zzer zzerVar = this.b;
        int b = ((zzaef) zzaepVar).b(zzerVar.f6834a, 0, 16384);
        if (b == -1) {
            return -1;
        }
        zzerVar.E(0);
        zzerVar.C(b);
        boolean z = this.f4258c;
        zzanz zzanzVar = this.f4257a;
        if (!z) {
            zzanzVar.n = 0L;
            this.f4258c = true;
        }
        zzanzVar.x(zzerVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.f4257a.y(zzaerVar, new zzapu(IntCompanionObject.MIN_VALUE, 0, 1));
        zzaerVar.zzv();
        zzaerVar.e(new zzafq(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
