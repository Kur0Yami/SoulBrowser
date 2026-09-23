package com.google.android.gms.internal.ads;

import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzanv implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzanw f4253a = new zzanw(null, 0, "audio/ac3");
    public final zzer b = new zzer(2786);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4254c;

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.f4254c = false;
        this.f4253a.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzaef zzaefVar;
        int a2;
        zzer zzerVar = new zzer(10);
        int i = 0;
        while (true) {
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
        int i2 = 0;
        int i3 = i;
        while (true) {
            zzaefVar.m(zzerVar.f6834a, 0, 6, false);
            zzerVar.E(0);
            if (zzerVar.L() != 2935) {
                zzaefVar.f = 0;
                i3++;
                if (i3 - i >= 8192) {
                    break;
                }
                zzaefVar.e(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                byte[] bArr = zzerVar.f6834a;
                if (bArr.length < 6) {
                    a2 = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    int i4 = (((bArr[2] & 7) << 8) | (bArr[3] & UByte.MAX_VALUE)) + 1;
                    a2 = i4 + i4;
                } else {
                    byte b = bArr[4];
                    a2 = zzadp.a((b & 192) >> 6, b & 63);
                }
                if (a2 == -1) {
                    break;
                }
                zzaefVar.e(a2 - 6, false);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        zzer zzerVar = this.b;
        int b = ((zzaef) zzaepVar).b(zzerVar.f6834a, 0, 2786);
        if (b == -1) {
            return -1;
        }
        zzerVar.E(0);
        zzerVar.C(b);
        boolean z = this.f4254c;
        zzanw zzanwVar = this.f4253a;
        if (!z) {
            zzanwVar.n = 0L;
            this.f4254c = true;
        }
        zzanwVar.x(zzerVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.f4253a.y(zzaerVar, new zzapu(IntCompanionObject.MIN_VALUE, 0, 1));
        zzaerVar.zzv();
        zzaerVar.e(new zzafq(-9223372036854775807L, 0L));
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
