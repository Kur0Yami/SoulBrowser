package com.google.android.gms.internal.ads;

import kotlin.UByte;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzaos implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4292a;
    public final zzafk b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4293c;
    public final int d;
    public final String e;
    public zzaga f;
    public String g;
    public int h = 0;
    public int i;
    public boolean j;
    public boolean k;
    public long l;
    public int m;
    public long n;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzafk, java.lang.Object] */
    public zzaos(String str, int i, String str2) {
        zzer zzerVar = new zzer(4);
        this.f4292a = zzerVar;
        zzerVar.f6834a[0] = -1;
        this.b = new Object();
        this.n = -9223372036854775807L;
        this.f4293c = str;
        this.d = i;
        this.e = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.n = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        boolean z;
        boolean z2;
        this.f.getClass();
        while (zzerVar.B() > 0) {
            int i = this.h;
            zzer zzerVar2 = this.f4292a;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(zzerVar.B(), this.m - this.i);
                    this.f.b(min, zzerVar);
                    int i2 = this.i + min;
                    this.i = i2;
                    if (i2 >= this.m) {
                        if (this.n == -9223372036854775807L) {
                            z3 = false;
                        }
                        zzgqa.f(z3);
                        this.f.d(this.n, 1, this.m, 0, null);
                        this.n += this.l;
                        this.i = 0;
                        this.h = 0;
                    }
                } else {
                    int min2 = Math.min(zzerVar.B(), 4 - this.i);
                    zzerVar.H(zzerVar2.f6834a, this.i, min2);
                    int i3 = this.i + min2;
                    this.i = i3;
                    if (i3 >= 4) {
                        zzerVar2.E(0);
                        int b = zzerVar2.b();
                        zzafk zzafkVar = this.b;
                        if (!zzafkVar.a(b)) {
                            this.i = 0;
                            this.h = 1;
                        } else {
                            this.m = zzafkVar.f3980c;
                            if (!this.j) {
                                this.l = (zzafkVar.g * 1000000) / zzafkVar.d;
                                zzt zztVar = new zzt();
                                zztVar.f9265a = this.g;
                                zztVar.d(this.e);
                                zztVar.e(zzafkVar.b);
                                zztVar.m = ConstantsKt.DEFAULT_BLOCK_SIZE;
                                zztVar.D = zzafkVar.e;
                                zztVar.E = zzafkVar.d;
                                zztVar.d = this.f4293c;
                                zztVar.f = this.d;
                                this.f.e(new zzv(zztVar));
                                this.j = true;
                            }
                            zzerVar2.E(0);
                            this.f.b(4, zzerVar2);
                            this.h = 2;
                        }
                    }
                }
            } else {
                byte[] bArr = zzerVar.f6834a;
                int i4 = zzerVar.b;
                int i5 = zzerVar.f6835c;
                while (true) {
                    if (i4 < i5) {
                        int i6 = i4 + 1;
                        byte b2 = bArr[i4];
                        if ((b2 & UByte.MAX_VALUE) == 255) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (this.k && (b2 & 224) == 224) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.k = z;
                        if (z2) {
                            zzerVar.E(i6);
                            this.k = false;
                            zzerVar2.f6834a[1] = bArr[i4];
                            this.i = 2;
                            this.h = 1;
                            break;
                        }
                        i4 = i6;
                    } else {
                        zzerVar.E(i5);
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.g = zzapuVar.e;
        zzapuVar.b();
        this.f = zzaerVar.f(zzapuVar.d, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.h = 0;
        this.i = 0;
        this.k = false;
        this.n = -9223372036854775807L;
    }
}
