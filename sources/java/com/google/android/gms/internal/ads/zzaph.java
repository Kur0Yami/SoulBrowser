package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaph implements zzapv {

    /* renamed from: a, reason: collision with root package name */
    public final zzapg f4312a;
    public final zzer b = new zzer(32);

    /* renamed from: c, reason: collision with root package name */
    public int f4313c;
    public int d;
    public boolean e;
    public boolean f;

    public zzaph(zzapg zzapgVar) {
        this.f4312a = zzapgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void a(zzfg zzfgVar, zzaer zzaerVar, zzapu zzapuVar) {
        this.f4312a.a(zzfgVar, zzaerVar, zzapuVar);
        this.f = true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void b(int i, zzer zzerVar) {
        int i2;
        boolean z;
        int i3 = i & 1;
        if (i3 != 0) {
            i2 = zzerVar.b + zzerVar.K();
        } else {
            i2 = -1;
        }
        if (this.f) {
            if (i3 != 0) {
                this.f = false;
                zzerVar.E(i2);
                this.d = 0;
            } else {
                return;
            }
        }
        while (zzerVar.B() > 0) {
            int i4 = this.d;
            zzer zzerVar2 = this.b;
            if (i4 < 3) {
                if (i4 == 0) {
                    int K = zzerVar.K();
                    zzerVar.E(zzerVar.b - 1);
                    if (K == 255) {
                        this.f = true;
                        return;
                    }
                }
                int min = Math.min(zzerVar.B(), 3 - this.d);
                zzerVar.H(zzerVar2.f6834a, this.d, min);
                int i5 = this.d + min;
                this.d = i5;
                if (i5 == 3) {
                    zzerVar2.E(0);
                    zzerVar2.C(3);
                    zzerVar2.G(1);
                    int K2 = zzerVar2.K();
                    if ((K2 & Uuid.SIZE_BITS) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int K3 = zzerVar2.K();
                    this.e = z;
                    int i6 = (((K2 & 15) << 8) | K3) + 3;
                    this.f4313c = i6;
                    byte[] bArr = zzerVar2.f6834a;
                    if (bArr.length < i6) {
                        int length = bArr.length;
                        zzerVar2.A(Math.min(4098, Math.max(i6, length + length)));
                    }
                }
            } else {
                int min2 = Math.min(zzerVar.B(), this.f4313c - this.d);
                zzerVar.H(zzerVar2.f6834a, this.d, min2);
                int i7 = this.d + min2;
                this.d = i7;
                int i8 = this.f4313c;
                if (i7 != i8) {
                    continue;
                } else {
                    if (this.e) {
                        if (zzfj.f(zzerVar2.f6834a, 0, i8, -1) == 0) {
                            zzerVar2.C(this.f4313c - 4);
                        } else {
                            this.f = true;
                            return;
                        }
                    } else {
                        zzerVar2.C(i8);
                    }
                    zzerVar2.E(0);
                    this.f4312a.b(zzerVar2);
                    this.d = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzb() {
        this.f = true;
    }
}
