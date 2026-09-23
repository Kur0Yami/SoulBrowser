package com.google.android.gms.internal.ads;

import java.util.Collections;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzaop implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzapj f4286a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public zzaga f4287c;
    public zzaoo d;
    public boolean e;
    public long l;
    public final boolean[] f = new boolean[3];
    public final zzaox g = new zzaox(32);
    public final zzaox h = new zzaox(33);
    public final zzaox i = new zzaox(34);
    public final zzaox j = new zzaox(39);
    public final zzaox k = new zzaox(40);
    public long m = -9223372036854775807L;
    public final zzer n = new zzer();

    public zzaop(zzapj zzapjVar) {
        this.f4286a = zzapjVar;
    }

    public final void a(int i, int i2, long j, long j2) {
        boolean z;
        zzaoo zzaooVar = this.d;
        boolean z2 = this.e;
        boolean z3 = false;
        zzaooVar.g = false;
        zzaooVar.h = false;
        zzaooVar.e = j2;
        zzaooVar.d = 0;
        zzaooVar.b = j;
        if (i2 >= 32 && i2 != 40) {
            if (zzaooVar.i && !zzaooVar.j) {
                if (z2) {
                    zzaooVar.a(i);
                }
                zzaooVar.i = false;
            }
            if (i2 <= 35 || i2 == 39) {
                zzaooVar.h = !zzaooVar.j;
                zzaooVar.j = true;
            }
        }
        if (i2 >= 16 && i2 <= 21) {
            z = true;
        } else {
            z = false;
        }
        zzaooVar.f4285c = z;
        if (z || i2 <= 9) {
            z3 = true;
        }
        zzaooVar.f = z3;
        if (!this.e) {
            this.g.b(i2);
            this.h.b(i2);
            this.i.b(i2);
        }
        this.j.b(i2);
        this.k.b(i2);
    }

    public final void b(byte[] bArr, int i, int i2) {
        boolean z;
        zzaoo zzaooVar = this.d;
        if (zzaooVar.f) {
            int i3 = zzaooVar.d;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                if ((bArr[i4] & ByteCompanionObject.MIN_VALUE) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzaooVar.g = z;
                zzaooVar.f = false;
            } else {
                zzaooVar.d = (i2 - i) + i3;
            }
        }
        if (!this.e) {
            this.g.c(bArr, i, i2);
            this.h.c(bArr, i, i2);
            this.i.c(bArr, i, i2);
        }
        this.j.c(bArr, i, i2);
        this.k.c(bArr, i, i2);
    }

    public final void c(int i, int i2, long j, long j2) {
        zzgq zzgqVar = this.f4286a.f4316c;
        zzaoo zzaooVar = this.d;
        boolean z = this.e;
        boolean z2 = false;
        if (zzaooVar.j && zzaooVar.g) {
            zzaooVar.m = zzaooVar.f4285c;
            zzaooVar.j = false;
        } else if (zzaooVar.h || zzaooVar.g) {
            if (z && zzaooVar.i) {
                zzaooVar.a(i + ((int) (j - zzaooVar.b)));
            }
            zzaooVar.k = zzaooVar.b;
            zzaooVar.l = zzaooVar.e;
            zzaooVar.m = zzaooVar.f4285c;
            zzaooVar.i = true;
        }
        if (!this.e) {
            zzaox zzaoxVar = this.g;
            zzaoxVar.d(i2);
            zzaox zzaoxVar2 = this.h;
            zzaoxVar2.d(i2);
            zzaox zzaoxVar3 = this.i;
            zzaoxVar3.d(i2);
            if (zzaoxVar.f4299c && zzaoxVar2.f4299c && zzaoxVar3.f4299c) {
                String str = this.b;
                int i3 = zzaoxVar.e;
                byte[] bArr = new byte[zzaoxVar2.e + i3 + zzaoxVar3.e];
                System.arraycopy(zzaoxVar.d, 0, bArr, 0, i3);
                System.arraycopy(zzaoxVar2.d, 0, bArr, zzaoxVar.e, zzaoxVar2.e);
                System.arraycopy(zzaoxVar3.d, 0, bArr, zzaoxVar.e + zzaoxVar2.e, zzaoxVar3.e);
                String str2 = null;
                zzgg f = zzgm.f(zzaoxVar2.d, 3, zzaoxVar2.e, null);
                zzgb zzgbVar = f.b;
                if (zzgbVar != null) {
                    int i4 = zzgbVar.f;
                    int[] iArr = zzgbVar.e;
                    int i5 = zzgbVar.d;
                    str2 = zzdo.a(zzgbVar.f7788a, zzgbVar.b, zzgbVar.f7789c, i5, iArr, i4);
                }
                zzt zztVar = new zzt();
                zztVar.f9265a = str;
                zztVar.d("video/mp2t");
                zztVar.e("video/hevc");
                zztVar.i = str2;
                zztVar.s = f.e;
                zztVar.t = f.f;
                zztVar.u = f.g;
                zztVar.v = f.h;
                zzh zzhVar = new zzh();
                zzhVar.f8317a = f.k;
                zzhVar.b = f.l;
                zzhVar.f8318c = f.m;
                zzhVar.e = f.f7922c + 8;
                zzhVar.f = f.d + 8;
                zztVar.B = zzhVar.a();
                zztVar.y = f.i;
                zztVar.n = f.j;
                zztVar.C = f.f7921a + 1;
                zztVar.o = Collections.singletonList(bArr);
                zzv zzvVar = new zzv(zztVar);
                this.f4287c.e(zzvVar);
                int i6 = zzvVar.o;
                if (i6 != -1) {
                    z2 = true;
                }
                zzgqa.f(z2);
                zzgqVar.a(i6);
                this.e = true;
            }
        }
        zzaox zzaoxVar4 = this.j;
        boolean d = zzaoxVar4.d(i2);
        zzer zzerVar = this.n;
        if (d) {
            zzerVar.z(zzaoxVar4.d, zzgm.a(zzaoxVar4.d, zzaoxVar4.e));
            zzerVar.G(5);
            zzgqVar.b(j2, zzerVar);
        }
        zzaox zzaoxVar5 = this.k;
        if (zzaoxVar5.d(i2)) {
            zzerVar.z(zzaoxVar5.d, zzgm.a(zzaoxVar5.d, zzaoxVar5.e));
            zzerVar.G(5);
            zzgqVar.b(j2, zzerVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        this.f4287c.getClass();
        String str = zzfj.f7405a;
        if (z) {
            this.f4286a.f4316c.c(0);
            c(0, 0, this.l, this.m);
            a(0, 48, this.l, this.m);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.m = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        int i;
        this.f4287c.getClass();
        String str = zzfj.f7405a;
        while (zzerVar.B() > 0) {
            int i2 = zzerVar.b;
            int i3 = zzerVar.f6835c;
            byte[] bArr = zzerVar.f6834a;
            this.l += zzerVar.B();
            this.f4287c.b(zzerVar.B(), zzerVar);
            while (i2 < i3) {
                int g = zzgm.g(bArr, i2, i3, this.f);
                if (g != i3) {
                    int i4 = bArr[g + 3] & 126;
                    int i5 = 3;
                    if (g > 0) {
                        int i6 = g - 1;
                        if (bArr[i6] == 0) {
                            i5 = 4;
                            g = i6;
                        }
                    }
                    int i7 = g - i2;
                    if (i7 > 0) {
                        b(bArr, i2, g);
                    }
                    int i8 = i3 - g;
                    long j = this.l - i8;
                    if (i7 < 0) {
                        i = -i7;
                    } else {
                        i = 0;
                    }
                    c(i8, i, j, this.m);
                    a(i8, i4 >> 1, j, this.m);
                    i2 = g + i5;
                } else {
                    b(bArr, i2, i3);
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.b = zzapuVar.e;
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 2);
        this.f4287c = f;
        this.d = new zzaoo(f);
        this.f4286a.a(zzaerVar, zzapuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.l = 0L;
        this.m = -9223372036854775807L;
        zzgm.h(this.f);
        this.g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        this.f4286a.f4316c.c(0);
        zzaoo zzaooVar = this.d;
        if (zzaooVar != null) {
            zzaooVar.f = false;
            zzaooVar.g = false;
            zzaooVar.h = false;
            zzaooVar.i = false;
            zzaooVar.j = false;
        }
    }
}
