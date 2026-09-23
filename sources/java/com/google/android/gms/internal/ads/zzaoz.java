package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaoz implements zzapv {

    /* renamed from: a, reason: collision with root package name */
    public final zzaog f4302a;
    public final zzeq b = new zzeq(new byte[10], 10);

    /* renamed from: c, reason: collision with root package name */
    public int f4303c = 0;
    public int d;
    public zzfg e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;

    public zzaoz(zzaog zzaogVar) {
        this.f4302a = zzaogVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void a(zzfg zzfgVar, zzaer zzaerVar, zzapu zzapuVar) {
        this.e = zzfgVar;
        this.f4302a.y(zzaerVar, zzapuVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.internal.ads.zzeq] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzaog] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    @Override // com.google.android.gms.internal.ads.zzapv
    public final void b(int i, zzer zzerVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j;
        int i7;
        long j2;
        boolean z;
        this.e.getClass();
        int i8 = i & 1;
        ?? r3 = this.f4302a;
        int i9 = -1;
        int i10 = 2;
        ?? r7 = 0;
        int i11 = 1;
        if (i8 != 0) {
            int i12 = this.f4303c;
            if (i12 != 0 && i12 != 1) {
                if (i12 != 2) {
                    int i13 = this.j;
                    if (i13 != -1) {
                        StringBuilder sb = new StringBuilder(String.valueOf(i13).length() + 48);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i13);
                        sb.append(" more bytes");
                        zzee.c("PesReader", sb.toString());
                    }
                    if (zzerVar.f6835c == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    r3.v(z);
                } else {
                    zzee.c("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            this.f4303c = 1;
            this.d = 0;
        }
        int i14 = i;
        while (zzerVar.B() > 0) {
            int i15 = this.f4303c;
            if (i15 != 0) {
                ?? r10 = this.b;
                if (i15 != i11) {
                    if (i15 != i10) {
                        int B = zzerVar.B();
                        int i16 = this.j;
                        if (i16 == i9) {
                            i6 = r7;
                        } else {
                            i6 = B - i16;
                        }
                        if (i6 > 0) {
                            B -= i6;
                            zzerVar.C(zzerVar.b + B);
                        }
                        r3.x(zzerVar);
                        int i17 = this.j;
                        if (i17 != i9) {
                            int i18 = i17 - B;
                            this.j = i18;
                            if (i18 == 0) {
                                r3.v(r7);
                                this.f4303c = i11;
                                this.d = r7;
                            }
                        }
                    } else {
                        if (c(zzerVar, r10.f6806a, Math.min(10, this.i)) && c(zzerVar, null, this.i)) {
                            r10.d(r7);
                            if (this.f) {
                                r10.f(4);
                                long h = r10.h(3);
                                r10.f(i11);
                                int h2 = r10.h(15) << 15;
                                r10.f(i11);
                                long h3 = r10.h(15);
                                r10.f(i11);
                                if (!this.h && this.g) {
                                    r10.f(4);
                                    j2 = h;
                                    r10.f(i11);
                                    int h4 = r10.h(15) << 15;
                                    r10.f(i11);
                                    long h5 = r10.h(15);
                                    r10.f(i11);
                                    this.e.d((r10.h(3) << 30) | h4 | h5);
                                    this.h = true;
                                } else {
                                    j2 = h;
                                }
                                j = this.e.d(h3 | (j2 << 30) | h2);
                            } else {
                                j = -9223372036854775807L;
                            }
                            if (true != this.k) {
                                i7 = 0;
                            } else {
                                i7 = 4;
                            }
                            i14 |= i7;
                            r3.w(i14, j);
                            this.f4303c = 3;
                            this.d = 0;
                            r7 = 0;
                            i9 = -1;
                            i10 = 2;
                            i11 = 1;
                        }
                    }
                    int i19 = r7;
                    i2 = i10;
                    i3 = i19;
                    i4 = i11;
                } else {
                    int i20 = r7;
                    if (c(zzerVar, r10.f6806a, 9)) {
                        r10.d(i20);
                        int h6 = r10.h(24);
                        i4 = 1;
                        if (h6 != 1) {
                            a.i(new StringBuilder(String.valueOf(h6).length() + 30), "Unexpected start code prefix: ", h6, "PesReader");
                            i9 = -1;
                            this.j = -1;
                            i5 = 0;
                            i2 = 2;
                        } else {
                            r10.f(8);
                            int h7 = r10.h(16);
                            r10.f(5);
                            this.k = r10.g();
                            i2 = 2;
                            r10.f(2);
                            this.f = r10.g();
                            this.g = r10.g();
                            r10.f(6);
                            int h8 = r10.h(8);
                            this.i = h8;
                            if (h7 == 0) {
                                this.j = -1;
                                i5 = 2;
                                i9 = -1;
                            } else {
                                int i21 = (h7 - 3) - h8;
                                this.j = i21;
                                if (i21 < 0) {
                                    a.i(new StringBuilder(String.valueOf(i21).length() + 36), "Found negative packet payload size: ", i21, "PesReader");
                                    i9 = -1;
                                    this.j = -1;
                                } else {
                                    i9 = -1;
                                }
                                i5 = 2;
                            }
                        }
                        this.f4303c = i5;
                        i3 = 0;
                        this.d = 0;
                    } else {
                        i3 = i20;
                        i9 = -1;
                        i2 = 2;
                        i4 = 1;
                    }
                }
            } else {
                int i22 = r7;
                i2 = i10;
                i3 = i22;
                i4 = i11;
                zzerVar.G(zzerVar.B());
            }
            int i23 = i2;
            r7 = i3;
            i10 = i23;
            i11 = i4;
        }
    }

    public final boolean c(zzer zzerVar, byte[] bArr, int i) {
        int min = Math.min(zzerVar.B(), i - this.d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzerVar.G(min);
        } else {
            zzerVar.H(bArr, this.d, min);
        }
        int i2 = this.d + min;
        this.d = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzb() {
        this.f4303c = 0;
        this.d = 0;
        this.h = false;
        this.f4302a.zza();
    }
}
