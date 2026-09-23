package com.google.android.gms.internal.ads;

import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzaob implements zzaeo {

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4262c;
    public final zzeq d;
    public zzaer e;
    public long f;
    public boolean h;
    public boolean i;

    /* renamed from: a, reason: collision with root package name */
    public final zzaoc f4261a = new zzaoc(null, 0, "audio/mp4a-latm", true);
    public final zzer b = new zzer(2048);
    public long g = -1;

    public zzaob() {
        zzer zzerVar = new zzer(10);
        this.f4262c = zzerVar;
        byte[] bArr = zzerVar.f6834a;
        this.d = new zzeq(bArr, bArr.length);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.h = false;
        this.f4261a.zza();
        this.f = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzer zzerVar;
        zzaef zzaefVar;
        int i = 0;
        while (true) {
            zzerVar = this.f4262c;
            zzaefVar = (zzaef) zzaepVar;
            zzaefVar.m(zzerVar.f6834a, 0, 10, false);
            zzerVar.E(0);
            if (zzerVar.O() != 4801587) {
                break;
            }
            zzerVar.G(3);
            int g = zzerVar.g();
            i += g + 10;
            zzaefVar.e(g, false);
        }
        zzaefVar.f = 0;
        zzaefVar.e(i, false);
        if (this.g == -1) {
            this.g = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            zzaefVar.m(zzerVar.f6834a, 0, 2, false);
            zzerVar.E(0);
            if ((zzerVar.L() & 65526) == 65520) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                zzaefVar.m(zzerVar.f6834a, 0, 4, false);
                zzeq zzeqVar = this.d;
                zzeqVar.d(14);
                int h = zzeqVar.h(13);
                if (h <= 6) {
                    i4++;
                    zzaefVar.f = 0;
                    zzaefVar.e(i4, false);
                } else {
                    zzaefVar.e(h - 6, false);
                    i3 += h;
                }
            } else {
                i4++;
                zzaefVar.f = 0;
                zzaefVar.e(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        this.e.getClass();
        zzer zzerVar = this.b;
        int b = ((zzaef) zzaepVar).b(zzerVar.f6834a, 0, 2048);
        if (!this.i) {
            this.e.e(new zzafq(-9223372036854775807L, 0L));
            this.i = true;
        }
        if (b == -1) {
            return -1;
        }
        zzerVar.E(0);
        zzerVar.C(b);
        boolean z = this.h;
        zzaoc zzaocVar = this.f4261a;
        if (!z) {
            zzaocVar.u = this.f;
            this.h = true;
        }
        zzaocVar.x(zzerVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.e = zzaerVar;
        this.f4261a.y(zzaerVar, new zzapu(IntCompanionObject.MIN_VALUE, 0, 1));
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
