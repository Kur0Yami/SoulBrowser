package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzagz implements zzaeo {
    public zzaer d;
    public zzaga e;
    public zzap g;
    public zzafb h;
    public int i;
    public int j;
    public zzagx k;
    public int l;
    public long m;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4024a = new byte[42];
    public final zzer b = new zzer(new byte[32768], 0);

    /* renamed from: c, reason: collision with root package name */
    public final zzaev f4025c = new Object();
    public int f = 0;

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.f = 0;
        } else {
            zzagx zzagxVar = this.k;
            if (zzagxVar != null) {
                zzagxVar.a(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.m = j3;
        this.l = 0;
        this.b.y(0);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzaic zzaicVar = zzaif.f4059a;
        zzap a2 = new zzafi().a(zzaepVar, zzaid.f4056a, 0);
        if (a2 != null) {
            int length = a2.f4304a.length;
        }
        zzer zzerVar = new zzer(4);
        ((zzaef) zzaepVar).m(zzerVar.f6834a, 0, 4, false);
        if (zzerVar.P() != 1716281667) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [com.google.android.gms.internal.ads.zzagx, com.google.android.gms.internal.ads.zzaea] */
    /* JADX WARN: Type inference failed for: r1v39, types: [com.google.android.gms.internal.ads.zzaev, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.internal.ads.zzaex, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        int i;
        zzafr zzafqVar;
        long j;
        long j2;
        long j3;
        long j4;
        boolean z;
        boolean z2;
        int i2 = this.f;
        zzap zzapVar = null;
        boolean z3 = true;
        if (i2 != 0) {
            byte[] bArr = this.f4024a;
            if (i2 != 1) {
                int i3 = 3;
                int i4 = 4;
                if (i2 != 2) {
                    int i5 = 7;
                    if (i2 != 3) {
                        if (i2 != 4) {
                            this.e.getClass();
                            zzafb zzafbVar = this.h;
                            zzafbVar.getClass();
                            zzagx zzagxVar = this.k;
                            if (zzagxVar != null && zzagxVar.f3944c != null) {
                                return zzagxVar.b(zzaepVar, zzafoVar);
                            }
                            if (this.m == -1) {
                                ((zzaef) zzaepVar).f = 0;
                                zzaef zzaefVar = (zzaef) zzaepVar;
                                zzaefVar.e(1, false);
                                byte[] bArr2 = new byte[1];
                                zzaefVar.m(bArr2, 0, 1, false);
                                int i6 = bArr2[0] & 1;
                                if (1 != i6) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                zzaefVar.e(2, false);
                                if (1 != i6) {
                                    i5 = 6;
                                }
                                zzer zzerVar = new zzer(i5);
                                byte[] bArr3 = zzerVar.f6834a;
                                int i7 = 0;
                                while (i7 < i5) {
                                    int l = zzaefVar.l(bArr3, i7, i5 - i7);
                                    if (l == -1) {
                                        break;
                                    }
                                    i7 += l;
                                }
                                zzerVar.C(i7);
                                zzaefVar.f = 0;
                                ?? obj = new Object();
                                if (zzaew.c(zzerVar, zzafbVar, z2, obj)) {
                                    this.m = obj.f3962a;
                                    return 0;
                                }
                                throw zzat.a(null, null);
                            }
                            zzer zzerVar2 = this.b;
                            int i8 = zzerVar2.f6835c;
                            if (i8 < 32768) {
                                int b = ((zzaef) zzaepVar).b(zzerVar2.f6834a, i8, 32768 - i8);
                                if (b != -1) {
                                    z3 = false;
                                }
                                if (!z3) {
                                    zzerVar2.C(i8 + b);
                                } else if (zzerVar2.B() == 0) {
                                    long j5 = this.m * 1000000;
                                    zzafb zzafbVar2 = this.h;
                                    String str = zzfj.f7405a;
                                    this.e.d(j5 / zzafbVar2.e, 1, this.l, 0, null);
                                    return -1;
                                }
                            } else {
                                z3 = false;
                            }
                            int i9 = zzerVar2.b;
                            int i10 = this.l;
                            int i11 = this.i;
                            if (i10 < i11) {
                                zzerVar2.G(Math.min(i11 - i10, zzerVar2.B()));
                            }
                            this.h.getClass();
                            int i12 = zzerVar2.b;
                            while (true) {
                                int i13 = zzerVar2.f6835c - 16;
                                zzaev zzaevVar = this.f4025c;
                                if (i12 <= i13) {
                                    zzerVar2.E(i12);
                                    if (zzaew.a(zzerVar2, this.h, this.j, zzaevVar)) {
                                        zzerVar2.E(i12);
                                        j4 = zzaevVar.f3962a;
                                        break;
                                    }
                                    i12++;
                                } else {
                                    if (z3) {
                                        while (true) {
                                            int i14 = zzerVar2.f6835c;
                                            if (i12 <= i14 - this.i) {
                                                zzerVar2.E(i12);
                                                try {
                                                    z = zzaew.a(zzerVar2, this.h, this.j, zzaevVar);
                                                } catch (IndexOutOfBoundsException unused) {
                                                    z = false;
                                                }
                                                if (zzerVar2.b <= zzerVar2.f6835c && z) {
                                                    zzerVar2.E(i12);
                                                    j4 = zzaevVar.f3962a;
                                                    break;
                                                }
                                                i12++;
                                            } else {
                                                zzerVar2.E(i14);
                                                break;
                                            }
                                        }
                                    } else {
                                        zzerVar2.E(i12);
                                    }
                                    j4 = -1;
                                }
                            }
                            int i15 = zzerVar2.b - i9;
                            zzerVar2.E(i9);
                            this.e.b(i15, zzerVar2);
                            int i16 = this.l + i15;
                            this.l = i16;
                            if (j4 != -1) {
                                long j6 = this.m * 1000000;
                                zzafb zzafbVar3 = this.h;
                                String str2 = zzfj.f7405a;
                                this.e.d(j6 / zzafbVar3.e, 1, i16, 0, null);
                                this.l = 0;
                                this.m = j4;
                            }
                            int length = zzerVar2.f6834a.length - zzerVar2.f6835c;
                            if (zzerVar2.B() < 16 && length < 16) {
                                int B = zzerVar2.B();
                                byte[] bArr4 = zzerVar2.f6834a;
                                System.arraycopy(bArr4, zzerVar2.b, bArr4, 0, B);
                                zzerVar2.E(0);
                                zzerVar2.C(B);
                            }
                            return 0;
                        }
                        ((zzaef) zzaepVar).f = 0;
                        zzer zzerVar3 = new zzer(2);
                        zzaef zzaefVar2 = (zzaef) zzaepVar;
                        zzaefVar2.m(zzerVar3.f6834a, 0, 2, false);
                        int L = zzerVar3.L();
                        if ((L >> 2) == 16382) {
                            zzaefVar2.f = 0;
                            this.j = L;
                            zzaer zzaerVar = this.d;
                            String str3 = zzfj.f7405a;
                            long j7 = zzaefVar2.d;
                            long j8 = zzaefVar2.f3951c;
                            final zzafb zzafbVar4 = this.h;
                            zzafbVar4.getClass();
                            zzafa zzafaVar = zzafbVar4.k;
                            if (zzafaVar != null && zzafaVar.f3965a.length > 0) {
                                zzafqVar = new zzaez(zzafbVar4, j7);
                                i = 0;
                            } else if (j8 != -1 && zzafbVar4.j > 0) {
                                int i17 = this.j;
                                int i18 = zzafbVar4.f3967c;
                                zzadx zzadxVar = new zzadx() { // from class: com.google.android.gms.internal.ads.zzagv
                                    @Override // com.google.android.gms.internal.ads.zzadx
                                    public final long a(long j9) {
                                        zzafb.this.getClass();
                                        String str4 = zzfj.f7405a;
                                        return Math.max(0L, Math.min((j9 * r0.e) / 1000000, r0.j - 1));
                                    }
                                };
                                zzagw zzagwVar = new zzagw(zzafbVar4, i17);
                                long a2 = zzafbVar4.a();
                                long j9 = zzafbVar4.j;
                                int i19 = zzafbVar4.d;
                                if (i19 > 0) {
                                    i = 0;
                                    j = j8;
                                    j3 = ((i19 + i18) / 2) + 1;
                                    j2 = j9;
                                } else {
                                    i = 0;
                                    j = j8;
                                    int i20 = zzafbVar4.f3966a;
                                    int i21 = zzafbVar4.b;
                                    long j10 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                                    if (i20 == i21 && i20 > 0) {
                                        j10 = i20;
                                    }
                                    j2 = j9;
                                    j3 = (((j10 * zzafbVar4.g) * zzafbVar4.h) / 8) + 64;
                                }
                                ?? zzaeaVar = new zzaea(zzadxVar, zzagwVar, a2, j2, j7, j, j3, Math.max(6, i18));
                                this.k = zzaeaVar;
                                zzafqVar = zzaeaVar.f3943a;
                            } else {
                                i = 0;
                                zzafqVar = new zzafq(zzafbVar4.a(), 0L);
                            }
                            zzaerVar.e(zzafqVar);
                            this.f = 5;
                            return i;
                        }
                        zzaefVar2.f = 0;
                        throw zzat.a("First frame does not start with sync code.", null);
                    }
                    ?? r2 = 0;
                    zzafb zzafbVar5 = this.h;
                    ?? obj2 = new Object();
                    obj2.f3963a = zzafbVar5;
                    while (true) {
                        ((zzaef) zzaepVar).f = r2;
                        byte[] bArr5 = new byte[i4];
                        zzeq zzeqVar = new zzeq(bArr5, i4);
                        zzaef zzaefVar3 = (zzaef) zzaepVar;
                        zzaefVar3.m(bArr5, r2, i4, r2);
                        boolean g = zzeqVar.g();
                        int h = zzeqVar.h(i5);
                        int h2 = zzeqVar.h(24) + i4;
                        if (h == 0) {
                            byte[] bArr6 = new byte[38];
                            zzaefVar3.k(bArr6, r2, 38, r2);
                            obj2.f3963a = new zzafb(bArr6, i4);
                        } else {
                            zzafb zzafbVar6 = obj2.f3963a;
                            if (zzafbVar6 != null) {
                                zzap zzapVar2 = zzafbVar6.l;
                                if (h == i3) {
                                    zzer zzerVar4 = new zzer(h2);
                                    zzaefVar3.k(zzerVar4.f6834a, 0, h2, false);
                                    obj2.f3963a = new zzafb(zzafbVar6.f3966a, zzafbVar6.b, zzafbVar6.f3967c, zzafbVar6.d, zzafbVar6.e, zzafbVar6.g, zzafbVar6.h, zzafbVar6.j, zzaey.a(zzerVar4), zzafbVar6.l);
                                } else {
                                    int i22 = i4;
                                    if (h == i22) {
                                        zzer zzerVar5 = new zzer(h2);
                                        zzaefVar3.k(zzerVar5.f6834a, 0, h2, false);
                                        zzerVar5.G(i22);
                                        zzap b2 = zzagg.b(Arrays.asList(zzagg.a(zzerVar5, false, false).f4000a));
                                        if (zzapVar2 != null) {
                                            b2 = zzapVar2.b(b2);
                                        }
                                        obj2.f3963a = new zzafb(zzafbVar6.f3966a, zzafbVar6.b, zzafbVar6.f3967c, zzafbVar6.d, zzafbVar6.e, zzafbVar6.g, zzafbVar6.h, zzafbVar6.j, zzafbVar6.k, b2);
                                    } else if (h == 6) {
                                        zzer zzerVar6 = new zzer(h2);
                                        zzaefVar3.k(zzerVar6.f6834a, 0, h2, false);
                                        zzerVar6.G(4);
                                        zzap zzapVar3 = new zzap(zzgtd.r(zzaht.b(zzerVar6)));
                                        if (zzapVar2 != null) {
                                            zzapVar3 = zzapVar2.b(zzapVar3);
                                        }
                                        obj2.f3963a = new zzafb(zzafbVar6.f3966a, zzafbVar6.b, zzafbVar6.f3967c, zzafbVar6.d, zzafbVar6.e, zzafbVar6.g, zzafbVar6.h, zzafbVar6.j, zzafbVar6.k, zzapVar3);
                                    } else {
                                        zzaefVar3.d(h2, false);
                                    }
                                }
                            } else {
                                throw new IllegalArgumentException();
                            }
                        }
                        zzafb zzafbVar7 = obj2.f3963a;
                        String str4 = zzfj.f7405a;
                        this.h = zzafbVar7;
                        if (g) {
                            zzafbVar7.getClass();
                            this.i = Math.max(zzafbVar7.f3967c, 6);
                            zzv b3 = this.h.b(bArr, this.g);
                            zzaga zzagaVar = this.e;
                            zzt zztVar = new zzt(b3);
                            zztVar.d("audio/flac");
                            zzagaVar.e(new zzv(zztVar));
                            this.h.a();
                            this.f = 4;
                            return 0;
                        }
                        r2 = 0;
                        i3 = 3;
                        i4 = 4;
                        i5 = 7;
                    }
                } else {
                    zzer zzerVar7 = new zzer(4);
                    ((zzaef) zzaepVar).k(zzerVar7.f6834a, 0, 4, false);
                    if (zzerVar7.P() == 1716281667) {
                        this.f = 3;
                        return 0;
                    }
                    throw zzat.a("Failed to read FLAC stream marker.", null);
                }
            } else {
                ((zzaef) zzaepVar).m(bArr, 0, 42, false);
                ((zzaef) zzaepVar).f = 0;
                this.f = 2;
                return 0;
            }
        } else {
            ((zzaef) zzaepVar).f = 0;
            zzaef zzaefVar4 = (zzaef) zzaepVar;
            long zzm = zzaefVar4.zzm();
            zzap a3 = new zzafi().a(zzaepVar, null, 0);
            if (a3 != null && a3.f4304a.length != 0) {
                zzapVar = a3;
            }
            zzaefVar4.d((int) (zzaefVar4.zzm() - zzm), false);
            this.g = zzapVar;
            this.f = 1;
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.d = zzaerVar;
        this.e = zzaerVar.f(0, 1);
        zzaerVar.zzv();
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
