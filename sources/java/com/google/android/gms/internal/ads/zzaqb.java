package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzaqb implements zzaqa {

    /* renamed from: a, reason: collision with root package name */
    public final zzaer f4336a;
    public final zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaqe f4337c;
    public final zzv d;
    public final int e;
    public long f;
    public int g;
    public long h;

    public zzaqb(zzaer zzaerVar, zzaga zzagaVar, zzaqe zzaqeVar, String str, int i) {
        this.f4336a = zzaerVar;
        this.b = zzagaVar;
        this.f4337c = zzaqeVar;
        int i2 = zzaqeVar.f4340a;
        int i3 = zzaqeVar.b;
        int i4 = zzaqeVar.d * i2;
        int i5 = zzaqeVar.f4341c;
        int i6 = i4 / 8;
        if (i5 == i6) {
            int i7 = i3 * i6;
            int i8 = i7 * 8;
            int max = Math.max(i6, i7 / 10);
            this.e = max;
            zzt zztVar = new zzt();
            zztVar.d("audio/wav");
            zztVar.e(str);
            zztVar.g = i8;
            zztVar.h = i8;
            zztVar.m = max;
            zztVar.D = i2;
            zztVar.E = i3;
            zztVar.F = i;
            this.d = new zzv(zztVar);
            return;
        }
        throw zzat.a(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i6).length() + 28 + String.valueOf(i5).length()), "Expected block size: ", i6, "; got: ", i5), null);
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final void a(long j) {
        this.f = j;
        this.g = 0;
        this.h = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final void b(int i, long j) {
        this.f4336a.e(new zzaqh(this.f4337c, 1, i, j));
        this.b.e(this.d);
    }

    @Override // com.google.android.gms.internal.ads.zzaqa
    public final boolean c(zzaep zzaepVar, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
            int f = this.b.f(zzaepVar, (int) Math.min(i2 - i, j2), true);
            if (f == -1) {
                j2 = 0;
            } else {
                this.g += f;
                j2 -= f;
            }
        }
        int i3 = this.g;
        int i4 = this.f4337c.f4341c;
        int i5 = i3 / i4;
        if (i5 > 0) {
            long u = this.f + zzfj.u(this.h, 1000000L, r2.b, RoundingMode.DOWN);
            int i6 = i5 * i4;
            int i7 = this.g - i6;
            this.b.d(u, 1, i6, i7, null);
            this.h += i5;
            this.g = i7;
        }
        if (j2 <= 0) {
            return true;
        }
        return false;
    }
}
