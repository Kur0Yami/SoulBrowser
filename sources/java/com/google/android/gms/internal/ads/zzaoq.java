package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaoq implements zzaog {
    public zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4289c;
    public int e;
    public int f;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4288a = new zzer(10);
    public long d = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        int i;
        boolean z2;
        this.b.getClass();
        if (this.f4289c && (i = this.e) != 0 && this.f == i) {
            if (this.d != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.f(z2);
            this.b.d(this.d, 1, this.e, 0, null);
            this.f4289c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.f4289c = true;
        this.d = j;
        this.e = 0;
        this.f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        this.b.getClass();
        if (!this.f4289c) {
            return;
        }
        int B = zzerVar.B();
        int i = this.f;
        if (i < 10) {
            int min = Math.min(B, 10 - i);
            byte[] bArr = zzerVar.f6834a;
            int i2 = zzerVar.b;
            zzer zzerVar2 = this.f4288a;
            System.arraycopy(bArr, i2, zzerVar2.f6834a, this.f, min);
            if (this.f + min == 10) {
                zzerVar2.E(0);
                if (zzerVar2.K() == 73 && zzerVar2.K() == 68 && zzerVar2.K() == 51) {
                    zzerVar2.G(3);
                    this.e = zzerVar2.g() + 10;
                } else {
                    zzee.c("Id3Reader", "Discarding invalid ID3 tag");
                    this.f4289c = false;
                    return;
                }
            }
        }
        int min2 = Math.min(B, this.e - this.f);
        this.b.b(min2, zzerVar);
        this.f += min2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 5);
        this.b = f;
        zzt zztVar = new zzt();
        zzapuVar.b();
        zztVar.f9265a = zzapuVar.e;
        zztVar.d("video/mp2t");
        zztVar.e("application/id3");
        f.e(new zzv(zztVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.f4289c = false;
        this.d = -9223372036854775807L;
    }
}
