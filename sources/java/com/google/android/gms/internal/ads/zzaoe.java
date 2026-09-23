package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzaoe implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4266a;

    /* renamed from: c, reason: collision with root package name */
    public final String f4267c;
    public final int d;
    public String f;
    public zzaga g;
    public int i;
    public int j;
    public long k;
    public zzv l;
    public int m;
    public int n;
    public int h = 0;
    public long q = -9223372036854775807L;
    public final AtomicInteger b = new AtomicInteger();
    public int o = -1;
    public int p = -1;
    public final String e = "video/mp2t";

    public zzaoe(String str, int i, int i2) {
        this.f4266a = new zzer(new byte[i2]);
        this.f4267c = str;
        this.d = i;
    }

    public final boolean a(zzer zzerVar, byte[] bArr, int i) {
        int min = Math.min(zzerVar.B(), i - this.i);
        zzerVar.H(bArr, this.i, min);
        int i2 = this.i + min;
        this.i = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    public final void b(zzaem zzaemVar) {
        int i;
        zzt zztVar;
        int i2 = zzaemVar.b;
        String str = zzaemVar.f3958a;
        if (i2 != -2147483647 && (i = zzaemVar.f3959c) != -1) {
            zzv zzvVar = this.l;
            if (zzvVar == null || i != zzvVar.E || i2 != zzvVar.F || !str.equals(zzvVar.m)) {
                zzv zzvVar2 = this.l;
                if (zzvVar2 == null) {
                    zztVar = new zzt();
                } else {
                    zztVar = new zzt(zzvVar2);
                }
                zztVar.f9265a = this.f;
                zztVar.d(this.e);
                zztVar.e(str);
                zztVar.D = i;
                zztVar.E = i2;
                zztVar.d = this.f4267c;
                zztVar.f = this.d;
                zzv zzvVar3 = new zzv(zztVar);
                this.l = zzvVar3;
                this.g.e(zzvVar3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.q = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        boolean z;
        int i;
        char c2;
        long j;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        long j2;
        long j3;
        int i11;
        int i12;
        byte b;
        int i13;
        byte b2;
        int i14;
        int i15;
        this.g.getClass();
        while (zzerVar.B() > 0) {
            int i16 = this.h;
            int i17 = 8;
            zzer zzerVar2 = this.f4266a;
            if (i16 == 0) {
                while (true) {
                    if (zzerVar.B() > 0) {
                        int i18 = this.j << 8;
                        this.j = i18;
                        int K = i18 | zzerVar.K();
                        this.j = K;
                        int a2 = zzaen.a(K);
                        this.n = a2;
                        if (a2 != 0) {
                            byte[] bArr = zzerVar2.f6834a;
                            int i19 = this.j;
                            bArr[0] = (byte) ((i19 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                            bArr[1] = (byte) ((i19 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                            bArr[2] = (byte) ((i19 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                            bArr[3] = (byte) (i19 & KotlinVersion.MAX_COMPONENT_VALUE);
                            this.i = 4;
                            this.j = 0;
                            if (a2 != 3 && a2 != 4) {
                                if (a2 == 1) {
                                    this.h = 1;
                                } else {
                                    this.h = 2;
                                }
                            } else {
                                this.h = 4;
                            }
                        }
                    }
                }
            } else if (i16 != 1) {
                if (i16 != 2) {
                    int i20 = -2147483647;
                    if (i16 != 3) {
                        if (i16 != 4) {
                            if (i16 != 5) {
                                int min = Math.min(zzerVar.B(), this.m - this.i);
                                this.g.b(min, zzerVar);
                                int i21 = this.i + min;
                                this.i = i21;
                                if (i21 == this.m) {
                                    if (this.q != -9223372036854775807L) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    zzgqa.f(z);
                                    zzaga zzagaVar = this.g;
                                    long j4 = this.q;
                                    if (this.n == 4) {
                                        i = 0;
                                    } else {
                                        i = 1;
                                    }
                                    zzagaVar.d(j4, i, this.m, 0, null);
                                    this.q += this.k;
                                    this.h = 0;
                                }
                            } else if (a(zzerVar, zzerVar2.f6834a, this.p)) {
                                byte[] bArr2 = zzerVar2.f6834a;
                                zzeq d = zzaen.d(bArr2);
                                int h = d.h(32);
                                int c3 = zzaen.c(d, zzaen.e);
                                int i22 = c3 + 1;
                                if (h == 1078008818) {
                                    c2 = 1;
                                } else {
                                    c2 = 0;
                                }
                                if (c2 != 0) {
                                    if (d.g()) {
                                        int i23 = c3 - 1;
                                        int i24 = bArr2[i23] << 8;
                                        int i25 = bArr2[c3] & UByte.MAX_VALUE;
                                        String str = zzfj.f7405a;
                                        char c4 = 65535;
                                        for (int i26 = 0; i26 < i23; i26++) {
                                            byte b3 = bArr2[i26];
                                            int i27 = (c4 >> '\f') ^ ((b3 & UByte.MAX_VALUE) >> 4);
                                            int[] iArr = zzfj.h;
                                            char c5 = (char) (iArr[i27 & KotlinVersion.MAX_COMPONENT_VALUE] ^ ((char) (c4 << 4)));
                                            c4 = (char) (((char) (c5 << 4)) ^ iArr[((b3 & 15) ^ (c5 >> '\f')) & KotlinVersion.MAX_COMPONENT_VALUE]);
                                        }
                                        if ((((char) i24) | i25) == c4) {
                                            int h2 = d.h(2);
                                            if (h2 != 0) {
                                                if (h2 != 1) {
                                                    if (h2 == 2) {
                                                        i4 = 384;
                                                    } else {
                                                        StringBuilder sb = new StringBuilder(String.valueOf(h2).length() + 51);
                                                        sb.append("Unsupported base duration index in DTS UHD header: ");
                                                        sb.append(h2);
                                                        throw zzat.a(sb.toString(), null);
                                                    }
                                                } else {
                                                    i4 = 480;
                                                }
                                                i3 = 3;
                                            } else {
                                                i3 = 3;
                                                i4 = 512;
                                            }
                                            int h3 = d.h(i3) + 1;
                                            int h4 = d.h(2);
                                            if (h4 != 0) {
                                                if (h4 != 1) {
                                                    if (h4 == 2) {
                                                        i5 = 48000;
                                                    } else {
                                                        StringBuilder sb2 = new StringBuilder(String.valueOf(h4).length() + 48);
                                                        sb2.append("Unsupported clock rate index in DTS UHD header: ");
                                                        sb2.append(h4);
                                                        throw zzat.a(sb2.toString(), null);
                                                    }
                                                } else {
                                                    i5 = 44100;
                                                }
                                            } else {
                                                i5 = 32000;
                                            }
                                            if (d.g()) {
                                                d.f(36);
                                            }
                                            i20 = i5 * (1 << d.h(2));
                                            j = zzfj.u(i4 * h3, 1000000L, i5, RoundingMode.DOWN);
                                        } else {
                                            throw zzat.a("CRC check failed", null);
                                        }
                                    } else {
                                        throw zzat.b("Only supports full channel mask-based audio presentation");
                                    }
                                } else {
                                    j = -9223372036854775807L;
                                }
                                int i28 = i20;
                                int i29 = 0;
                                for (char c6 = 0; c6 < c2; c6 = 1) {
                                    i29 += zzaen.c(d, zzaen.f);
                                }
                                for (int i30 = 0; i30 <= 0; i30++) {
                                    AtomicInteger atomicInteger = this.b;
                                    if (c2 != 0) {
                                        atomicInteger.set(zzaen.c(d, zzaen.g));
                                    }
                                    if (atomicInteger.get() != 0) {
                                        i2 = zzaen.c(d, zzaen.h);
                                    } else {
                                        i2 = 0;
                                    }
                                    i29 += i2;
                                }
                                int i31 = i22 + i29;
                                long j5 = j;
                                zzaem zzaemVar = new zzaem("audio/vnd.dts.uhd;profile=p2", 2, i28, i31, j5);
                                if (this.n == 3) {
                                    b(zzaemVar);
                                }
                                this.m = i31;
                                if (j5 == -9223372036854775807L) {
                                    j5 = 0;
                                }
                                this.k = j5;
                                zzerVar2.E(0);
                                this.g.b(this.p, zzerVar2);
                                this.h = 6;
                            } else {
                                continue;
                            }
                        } else if (a(zzerVar, zzerVar2.f6834a, 6)) {
                            zzeq d2 = zzaen.d(zzerVar2.f6834a);
                            d2.f(32);
                            int c7 = zzaen.c(d2, zzaen.i) + 1;
                            this.p = c7;
                            int i32 = this.i;
                            if (i32 > c7) {
                                int i33 = i32 - c7;
                                this.i = i32 - i33;
                                zzerVar.E(zzerVar.b - i33);
                            }
                            this.h = 5;
                        }
                    } else if (a(zzerVar, zzerVar2.f6834a, this.o)) {
                        zzeq d3 = zzaen.d(zzerVar2.f6834a);
                        d3.f(40);
                        int h5 = d3.h(2);
                        boolean g = d3.g();
                        if (true != g) {
                            i6 = 16;
                        } else {
                            i6 = 20;
                        }
                        if (true != g) {
                            i7 = 8;
                        } else {
                            i7 = 12;
                        }
                        d3.f(i7);
                        int h6 = d3.h(i6) + 1;
                        boolean g2 = d3.g();
                        if (g2) {
                            i9 = d3.h(2);
                            int h7 = d3.h(3) + 1;
                            if (d3.g()) {
                                d3.f(36);
                            }
                            int h8 = d3.h(3) + 1;
                            int h9 = d3.h(3) + 1;
                            if (h8 == 1 && h9 == 1) {
                                int i34 = h5 + 1;
                                int h10 = d3.h(i34);
                                for (int i35 = 0; i35 < i34; i35++) {
                                    if (((h10 >> i35) & 1) == 1) {
                                        d3.f(8);
                                    }
                                }
                                i8 = h7 * 512;
                                if (d3.g()) {
                                    d3.f(2);
                                    int h11 = (d3.h(2) + 1) << 2;
                                    int h12 = d3.h(2) + 1;
                                    for (int i36 = 0; i36 < h12; i36++) {
                                        d3.f(h11);
                                    }
                                }
                            } else {
                                throw zzat.b("Multiple audio presentations or assets not supported");
                            }
                        } else {
                            i8 = 0;
                            i9 = -1;
                        }
                        d3.f(i6);
                        d3.f(12);
                        if (g2) {
                            if (d3.g()) {
                                d3.f(4);
                            }
                            if (d3.g()) {
                                d3.f(24);
                            }
                            if (d3.g()) {
                                d3.l(d3.h(10) + 1);
                            }
                            d3.f(5);
                            i20 = zzaen.d[d3.h(4)];
                            i10 = d3.h(8) + 1;
                        } else {
                            i10 = -1;
                        }
                        int i37 = i20;
                        if (g2) {
                            if (i9 != 0) {
                                if (i9 != 1) {
                                    if (i9 == 2) {
                                        i11 = 48000;
                                    } else {
                                        StringBuilder sb3 = new StringBuilder(String.valueOf(i9).length() + 51);
                                        sb3.append("Unsupported reference clock code in DTS HD header: ");
                                        sb3.append(i9);
                                        throw zzat.a(sb3.toString(), null);
                                    }
                                } else {
                                    i11 = 44100;
                                }
                            } else {
                                i11 = 32000;
                            }
                            j2 = zzfj.u(i8, 1000000L, i11, RoundingMode.DOWN);
                        } else {
                            j2 = -9223372036854775807L;
                        }
                        b(new zzaem("audio/vnd.dts.hd;profile=lbr", i10, i37, h6, j2));
                        this.m = h6;
                        if (j2 == -9223372036854775807L) {
                            j3 = 0;
                        } else {
                            j3 = j2;
                        }
                        this.k = j3;
                        zzerVar2.E(0);
                        this.g.b(this.o, zzerVar2);
                        this.h = 6;
                    } else {
                        continue;
                    }
                } else if (a(zzerVar, zzerVar2.f6834a, 7)) {
                    zzeq d4 = zzaen.d(zzerVar2.f6834a);
                    d4.f(42);
                    if (true == d4.g()) {
                        i17 = 12;
                    }
                    this.o = d4.h(i17) + 1;
                    this.h = 3;
                }
            } else if (a(zzerVar, zzerVar2.f6834a, 18)) {
                byte[] bArr3 = zzerVar2.f6834a;
                if (this.l == null) {
                    String str2 = this.f;
                    zzeq d5 = zzaen.d(bArr3);
                    d5.f(60);
                    int i38 = zzaen.f3960a[d5.h(6)];
                    int i39 = zzaen.b[d5.h(4)];
                    int h13 = d5.h(5);
                    if (h13 >= 29) {
                        i14 = -1;
                    } else {
                        i14 = (zzaen.f3961c[h13] * 1000) / 2;
                    }
                    d5.f(10);
                    if (d5.h(2) > 0) {
                        i15 = 1;
                    } else {
                        i15 = 0;
                    }
                    int i40 = i38 + i15;
                    zzt zztVar = new zzt();
                    zztVar.f9265a = str2;
                    zztVar.d("video/mp2t");
                    zztVar.e("audio/vnd.dts");
                    zztVar.g = i14;
                    zztVar.D = i40;
                    zztVar.E = i39;
                    zztVar.p = null;
                    zztVar.d = this.f4267c;
                    zztVar.f = this.d;
                    zzv zzvVar = new zzv(zztVar);
                    this.l = zzvVar;
                    this.g.e(zzvVar);
                }
                this.m = zzaen.b(bArr3);
                byte b4 = bArr3[0];
                if (b4 != -2) {
                    if (b4 != -1) {
                        if (b4 != 31) {
                            i12 = (bArr3[4] & 1) << 6;
                            b = bArr3[5];
                        } else {
                            i12 = (bArr3[5] & 7) << 4;
                            b2 = bArr3[6];
                        }
                    } else {
                        i12 = (bArr3[4] & 7) << 4;
                        b2 = bArr3[7];
                    }
                    i13 = b2 & 60;
                    this.k = zzgwx.a(zzfj.t(this.l.F, (((i13 >> 2) | i12) + 1) * 32));
                    zzerVar2.E(0);
                    this.g.b(18, zzerVar2);
                    this.h = 6;
                } else {
                    i12 = (bArr3[5] & 1) << 6;
                    b = bArr3[4];
                }
                i13 = b & 252;
                this.k = zzgwx.a(zzfj.t(this.l.F, (((i13 >> 2) | i12) + 1) * 32));
                zzerVar2.E(0);
                this.g.b(18, zzerVar2);
                this.h = 6;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.f = zzapuVar.e;
        zzapuVar.b();
        this.g = zzaerVar.f(zzapuVar.d, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.q = -9223372036854775807L;
        this.b.set(0);
    }
}
