package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaof implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final List f4268a;
    public final zzaga[] b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4269c;
    public int d;
    public int e;
    public long f = -9223372036854775807L;

    public zzaof(List list) {
        this.f4268a = list;
        this.b = new zzaga[list.size()];
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        boolean z2;
        if (this.f4269c) {
            if (this.f != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.f(z2);
            int i = 0;
            while (true) {
                zzaga[] zzagaVarArr = this.b;
                if (i < zzagaVarArr.length) {
                    zzagaVarArr[i].d(this.f, 1, this.e, 0, null);
                    i++;
                } else {
                    this.f4269c = false;
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.f4269c = true;
        this.f = j;
        this.e = 0;
        this.d = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        boolean z;
        boolean z2;
        if (this.f4269c) {
            int i = 0;
            if (this.d == 2) {
                if (zzerVar.B() == 0) {
                    z2 = false;
                } else {
                    if (zzerVar.K() != 32) {
                        this.f4269c = false;
                    }
                    this.d--;
                    z2 = this.f4269c;
                }
                if (!z2) {
                    return;
                }
            }
            if (this.d == 1) {
                if (zzerVar.B() == 0) {
                    z = false;
                } else {
                    if (zzerVar.K() != 0) {
                        this.f4269c = false;
                    }
                    this.d--;
                    z = this.f4269c;
                }
                if (!z) {
                    return;
                }
            }
            int i2 = zzerVar.b;
            int B = zzerVar.B();
            while (true) {
                zzaga[] zzagaVarArr = this.b;
                if (i < zzagaVarArr.length) {
                    zzaga zzagaVar = zzagaVarArr[i];
                    zzerVar.E(i2);
                    zzagaVar.b(B, zzerVar);
                    i++;
                } else {
                    this.e += B;
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        int i = 0;
        while (true) {
            zzaga[] zzagaVarArr = this.b;
            if (i < zzagaVarArr.length) {
                zzapr zzaprVar = (zzapr) this.f4268a.get(i);
                zzapuVar.a();
                zzapuVar.b();
                zzaga f = zzaerVar.f(zzapuVar.d, 3);
                zzt zztVar = new zzt();
                zzapuVar.b();
                zztVar.f9265a = zzapuVar.e;
                zztVar.d("video/mp2t");
                zztVar.e("application/dvbsubs");
                zztVar.o = Collections.singletonList(zzaprVar.b);
                zztVar.d = zzaprVar.f4326a;
                f.e(new zzv(zztVar));
                zzagaVarArr[i] = f;
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.f4269c = false;
        this.f = -9223372036854775807L;
    }
}
