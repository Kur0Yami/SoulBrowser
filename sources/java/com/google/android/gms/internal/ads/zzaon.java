package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaon implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzapj f4282a;
    public long e;
    public String g;
    public zzaga h;
    public zzaom i;
    public boolean j;
    public boolean l;
    public final boolean[] f = new boolean[3];
    public final zzaox b = new zzaox(7);

    /* renamed from: c, reason: collision with root package name */
    public final zzaox f4283c = new zzaox(8);
    public final zzaox d = new zzaox(6);
    public long k = -9223372036854775807L;
    public final zzer m = new zzer();

    public zzaon(zzapj zzapjVar) {
        this.f4282a = zzapjVar;
    }

    public final void a(long j, long j2, int i) {
        if (!this.j) {
            this.b.b(i);
            this.f4283c.b(i);
        }
        this.d.b(i);
        zzaom zzaomVar = this.i;
        boolean z = this.l;
        zzaomVar.d = i;
        zzaomVar.f = j2;
        zzaomVar.e = j;
        zzaomVar.k = z;
    }

    public final void b(int i, int i2, long j, long j2) {
        zzgq zzgqVar = this.f4282a.f4316c;
        boolean z = true;
        if (!this.j) {
            zzaox zzaoxVar = this.b;
            zzaoxVar.d(i2);
            zzaox zzaoxVar2 = this.f4283c;
            zzaoxVar2.d(i2);
            if (!this.j) {
                if (zzaoxVar.f4299c && zzaoxVar2.f4299c) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(zzaoxVar.d, zzaoxVar.e));
                    arrayList.add(Arrays.copyOf(zzaoxVar2.d, zzaoxVar2.e));
                    zzgl d = zzgm.d(zzaoxVar.d, 4, zzaoxVar.e);
                    zzgn zzgnVar = new zzgn(zzaoxVar2.d, 4, zzaoxVar2.e);
                    int g = zzgnVar.g();
                    zzgnVar.g();
                    zzgnVar.a();
                    zzgnVar.d();
                    zzgk zzgkVar = new zzgk(g);
                    int i3 = d.f8075a;
                    int i4 = d.b;
                    int i5 = d.f8076c;
                    byte[] bArr = zzdo.f5952a;
                    String format = String.format("avc1.%02X%02X%02X", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
                    zzaga zzagaVar = this.h;
                    zzt zztVar = new zzt();
                    zztVar.f9265a = this.g;
                    zztVar.d("video/mp2t");
                    zztVar.e("video/avc");
                    zztVar.i = format;
                    zztVar.s = d.e;
                    zztVar.t = d.f;
                    zzh zzhVar = new zzh();
                    zzhVar.f8317a = d.j;
                    zzhVar.b = d.k;
                    zzhVar.f8318c = d.l;
                    zzhVar.e = d.h + 8;
                    zzhVar.f = d.i + 8;
                    zztVar.B = zzhVar.a();
                    zztVar.y = d.g;
                    zztVar.o = arrayList;
                    int i6 = d.m;
                    zztVar.n = i6;
                    zzagaVar.e(new zzv(zztVar));
                    this.j = true;
                    zzgqVar.a(i6);
                    this.i.b.append(d.d, d);
                    this.i.f4281c.append(g, zzgkVar);
                    zzaoxVar.a();
                    zzaoxVar2.a();
                }
            } else if (zzaoxVar.f4299c) {
                zzgl d2 = zzgm.d(zzaoxVar.d, 4, zzaoxVar.e);
                zzgqVar.a(d2.m);
                this.i.b.append(d2.d, d2);
                zzaoxVar.a();
            } else if (zzaoxVar2.f4299c) {
                zzgn zzgnVar2 = new zzgn(zzaoxVar2.d, 4, zzaoxVar2.e);
                int g2 = zzgnVar2.g();
                zzgnVar2.g();
                zzgnVar2.a();
                zzgnVar2.d();
                this.i.f4281c.append(g2, new zzgk(g2));
                zzaoxVar2.a();
            }
        }
        zzaox zzaoxVar3 = this.d;
        if (zzaoxVar3.d(i2)) {
            int a2 = zzgm.a(zzaoxVar3.d, zzaoxVar3.e);
            byte[] bArr2 = zzaoxVar3.d;
            zzer zzerVar = this.m;
            zzerVar.z(bArr2, a2);
            zzerVar.E(4);
            zzgqVar.b(j2, zzerVar);
        }
        zzaom zzaomVar = this.i;
        boolean z2 = this.j;
        if (zzaomVar.d == 9) {
            if (z2 && zzaomVar.g) {
                long j3 = zzaomVar.e;
                int i7 = i + ((int) (j - j3));
                long j4 = zzaomVar.i;
                if (j4 != -9223372036854775807L) {
                    long j5 = zzaomVar.h;
                    if (j3 != j5) {
                        zzaomVar.f4280a.d(j4, zzaomVar.j ? 1 : 0, (int) (j3 - j5), i7, null);
                    }
                }
            }
            zzaomVar.h = zzaomVar.e;
            zzaomVar.i = zzaomVar.f;
            zzaomVar.j = false;
            zzaomVar.g = true;
        }
        boolean z3 = zzaomVar.k;
        boolean z4 = zzaomVar.j;
        int i8 = zzaomVar.d;
        if (i8 != 5 && (!z3 || i8 != 1)) {
            z = false;
        }
        boolean z5 = z4 | z;
        zzaomVar.j = z5;
        zzaomVar.d = 24;
        if (z5) {
            this.l = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        this.h.getClass();
        String str = zzfj.f7405a;
        if (z) {
            this.f4282a.f4316c.c(0);
            b(0, 0, this.e, this.k);
            a(this.e, this.k, 9);
            b(0, 0, this.e, this.k);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        boolean z;
        this.k = j;
        int i2 = i & 2;
        boolean z2 = this.l;
        if (i2 != 0) {
            z = true;
        } else {
            z = false;
        }
        this.l = z | z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r13) {
        /*
            r12 = this;
            com.google.android.gms.internal.ads.zzaga r2 = r12.h
            r2.getClass()
            java.lang.String r2 = com.google.android.gms.internal.ads.zzfj.f7405a
            int r2 = r13.b
            int r7 = r13.f6835c
            byte[] r8 = r13.f6834a
            long r3 = r12.e
            int r5 = r13.B()
            long r5 = (long) r5
            long r3 = r3 + r5
            r12.e = r3
            com.google.android.gms.internal.ads.zzaga r3 = r12.h
            int r4 = r13.B()
            r3.b(r4, r13)
        L20:
            boolean[] r1 = r12.f
            int r1 = com.google.android.gms.internal.ads.zzgm.g(r8, r2, r7, r1)
            com.google.android.gms.internal.ads.zzaox r3 = r12.d
            com.google.android.gms.internal.ads.zzaox r4 = r12.f4283c
            com.google.android.gms.internal.ads.zzaox r5 = r12.b
            if (r1 == r7) goto L71
            int r6 = r1 + 3
            r6 = r8[r6]
            r9 = r6 & 31
            r6 = 3
            if (r1 <= 0) goto L40
            int r10 = r1 + (-1)
            r11 = r8[r10]
            if (r11 != 0) goto L40
            r6 = 4
        L3e:
            r11 = r6
            goto L42
        L40:
            r10 = r1
            goto L3e
        L42:
            int r1 = r10 - r2
            if (r1 <= 0) goto L53
            boolean r6 = r12.j
            if (r6 != 0) goto L50
            r5.c(r8, r2, r10)
            r4.c(r8, r2, r10)
        L50:
            r3.c(r8, r2, r10)
        L53:
            int r2 = r7 - r10
            long r3 = r12.e
            long r5 = (long) r2
            long r3 = r3 - r5
            if (r1 >= 0) goto L5d
            int r1 = -r1
            goto L5e
        L5d:
            r1 = 0
        L5e:
            long r5 = r12.k
            r0 = r2
            r2 = r1
            r1 = r0
            r0 = r12
            r0.b(r1, r2, r3, r5)
            r1 = r3
            long r3 = r12.k
            r5 = r9
            r0.a(r1, r3, r5)
            int r2 = r10 + r11
            goto L20
        L71:
            boolean r1 = r12.j
            if (r1 != 0) goto L7b
            r5.c(r8, r2, r7)
            r4.c(r8, r2, r7)
        L7b:
            r3.c(r8, r2, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaon.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.g = zzapuVar.e;
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 2);
        this.h = f;
        this.i = new zzaom(f);
        this.f4282a.a(zzaerVar, zzapuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.e = 0L;
        this.l = false;
        this.k = -9223372036854775807L;
        zzgm.h(this.f);
        this.b.a();
        this.f4283c.a();
        this.d.a();
        this.f4282a.f4316c.c(0);
        zzaom zzaomVar = this.i;
        if (zzaomVar != null) {
            zzaomVar.g = false;
        }
    }
}
