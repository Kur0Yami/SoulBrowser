package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaji implements zzaeo {
    public zzaer e;
    public zzaga f;
    public int h;
    public zzap i;
    public long k;
    public long l;
    public int n;
    public zzajk o;
    public boolean p;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4090a = new zzer(10);
    public final zzafk b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzafg f4091c = new zzafg();
    public long j = -9223372036854775807L;
    public final zzafi d = new zzafi();
    public zzaga g = new zzael();
    public long m = -1;

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a0, code lost:
    
        if (r19 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a2, code lost:
    
        r18.zzf(r3 + r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00aa, code lost:
    
        r17.h = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ac, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a7, code lost:
    
        r18.zzl();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.zzaep r18, boolean r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r1.zzl()
            long r3 = r1.zzn()
            r5 = 1
            if (r5 == r2) goto L13
            r6 = 131072(0x20000, float:1.83671E-40)
            goto L16
        L13:
            r6 = 32768(0x8000, float:4.5918E-41)
        L16:
            r7 = 0
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            r4 = 0
            if (r3 != 0) goto L3b
            com.google.android.gms.internal.ads.zzafi r3 = r0.d
            r7 = 0
            com.google.android.gms.internal.ads.zzap r3 = r3.a(r1, r7, r6)
            r0.i = r3
            if (r3 == 0) goto L2d
            com.google.android.gms.internal.ads.zzafg r7 = r0.f4091c
            r7.a(r3)
        L2d:
            long r7 = r1.zzm()
            int r3 = (int) r7
            if (r2 != 0) goto L37
            r1.zzf(r3)
        L37:
            r7 = r4
        L38:
            r8 = r7
            r9 = r8
            goto L3e
        L3b:
            r3 = r4
            r7 = r3
            goto L38
        L3e:
            boolean r10 = r17.b(r18)
            if (r10 == 0) goto L50
            if (r8 <= 0) goto L47
            goto La0
        L47:
            r0.g()
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        L50:
            com.google.android.gms.internal.ads.zzer r10 = r0.f4090a
            r10.E(r4)
            int r10 = r10.b()
            if (r7 == 0) goto L69
            long r11 = (long) r7
            r13 = -128000(0xfffffffffffe0c00, float:NaN)
            r13 = r13 & r10
            long r13 = (long) r13
            r15 = -128000(0xfffffffffffe0c00, double:NaN)
            long r11 = r11 & r15
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 != 0) goto L70
        L69:
            int r11 = com.google.android.gms.internal.ads.zzafl.a(r10)
            r12 = -1
            if (r11 != r12) goto L92
        L70:
            int r7 = r9 + 1
            if (r9 != r6) goto L80
            if (r2 == 0) goto L77
            return r4
        L77:
            r0.g()
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        L80:
            if (r2 == 0) goto L8e
            r1.zzl()
            int r8 = r3 + r7
            r1.h(r8)
        L8a:
            r8 = r4
            r9 = r7
            r7 = r8
            goto L3e
        L8e:
            r1.zzf(r5)
            goto L8a
        L92:
            int r8 = r8 + 1
            if (r8 != r5) goto L9d
            com.google.android.gms.internal.ads.zzafk r7 = r0.b
            r7.a(r10)
            r7 = r10
            goto Lad
        L9d:
            r10 = 4
            if (r8 != r10) goto Lad
        La0:
            if (r2 == 0) goto La7
            int r3 = r3 + r9
            r1.zzf(r3)
            goto Laa
        La7:
            r1.zzl()
        Laa:
            r0.h = r7
            return r5
        Lad:
            int r11 = r11 + (-4)
            r1.h(r11)
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaji.a(com.google.android.gms.internal.ads.zzaep, boolean):boolean");
    }

    public final boolean b(zzaep zzaepVar) {
        zzajk zzajkVar = this.o;
        if (zzajkVar != null) {
            long zzf = zzajkVar.zzf();
            if (zzf != -1 && zzaepVar.zzm() > zzf - 4) {
                return true;
            }
        }
        try {
            if (!zzaepVar.m(this.f4090a.f6834a, 0, 4, true)) {
                return true;
            }
            return false;
        } catch (EOFException unused) {
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.h = 0;
        this.j = -9223372036854775807L;
        this.k = 0L;
        this.n = 0;
        this.m = -1L;
        if (!(this.o instanceof zzaje)) {
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        return a(zzaepVar, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0333, code lost:
    
        if (com.google.android.gms.internal.ads.zzgqd.f8207c.zza(r10) != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0363, code lost:
    
        if (com.google.android.gms.internal.ads.zzajh.f4089c.zza(r11) != false) goto L149;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0313  */
    /* JADX WARN: Type inference failed for: r2v52, types: [com.google.android.gms.internal.ads.zzafq] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r57, com.google.android.gms.internal.ads.zzafo r58) {
        /*
            Method dump skipped, instructions count: 1356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaji.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.e = zzaerVar;
        zzaga f = zzaerVar.f(0, 1);
        this.f = f;
        this.g = f;
        this.e.zzv();
    }

    public final void g() {
        Object obj = this.o;
        if ((obj instanceof zzajd) && ((zzaee) obj).zzb()) {
            long j = this.m;
            if (j != -1 && j != this.o.zzf()) {
                zzajd zzajdVar = (zzajd) this.o;
                this.o = new zzajd(zzajdVar.h, zzajdVar.i, this.m, zzajdVar.g);
                zzaer zzaerVar = this.e;
                zzaerVar.getClass();
                zzaerVar.e(this.o);
                this.f.getClass();
                this.o.zza();
            }
        }
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
