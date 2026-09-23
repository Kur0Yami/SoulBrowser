package com.google.android.gms.internal.consent_sdk;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzpw implements zztb {

    /* renamed from: a, reason: collision with root package name */
    public final zzpv f10077a;

    public zzpw(zzpv zzpvVar) {
        Charset charset = zzqs.f10085a;
        this.f10077a = zzpvVar;
        zzpvVar.f10076a = this;
    }

    public final void a(int i, int i2) {
        this.f10077a.u(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void b(int i, long j) {
        this.f10077a.w(i, (j >> 63) ^ (j + j));
    }

    public final void c(int i, List list) {
        boolean z = list instanceof zzrb;
        int i2 = 0;
        zzpv zzpvVar = this.f10077a;
        if (z) {
            zzrb zzrbVar = (zzrb) list;
            while (i2 < list.size()) {
                Object zza = zzrbVar.zza();
                if (zza instanceof String) {
                    zzpvVar.r(i, (String) zza);
                } else {
                    zzpvVar.i(i, (zzpm) zza);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzpvVar.r(i, (String) list.get(i2));
            i2++;
        }
    }

    public final void d(int i, int i2) {
        this.f10077a.u(i, i2);
    }

    public final void e(int i, long j) {
        this.f10077a.w(i, j);
    }

    public final void f(int i, boolean z) {
        this.f10077a.g(i, z);
    }

    public final void g(int i, zzpm zzpmVar) {
        this.f10077a.i(i, zzpmVar);
    }

    public final void h(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f10077a.i(i, (zzpm) list.get(i2));
        }
    }

    public final void i(double d, int i) {
        this.f10077a.m(i, Double.doubleToRawLongBits(d));
    }

    public final void j(int i, int i2) {
        this.f10077a.o(i, i2);
    }

    public final void k(int i, int i2) {
        this.f10077a.k(i, i2);
    }

    public final void l(int i, long j) {
        this.f10077a.m(i, j);
    }

    public final void m(float f, int i) {
        this.f10077a.k(i, Float.floatToRawIntBits(f));
    }

    public final void n(int i, Object obj, zzsa zzsaVar) {
        zzpv zzpvVar = this.f10077a;
        zzpvVar.t(i, 3);
        zzsaVar.g((zzpa) obj, this);
        zzpvVar.t(i, 4);
    }

    public final void o(int i, int i2) {
        this.f10077a.o(i, i2);
    }

    public final void p(int i, long j) {
        this.f10077a.w(i, j);
    }

    public final void q(int i, Object obj, zzsa zzsaVar) {
        zzpa zzpaVar = (zzpa) obj;
        zzpv zzpvVar = this.f10077a;
        zzpvVar.t(i, 2);
        zzpvVar.v(zzpaVar.c(zzsaVar));
        zzsaVar.g(zzpaVar, this);
    }

    public final void r(int i, int i2) {
        this.f10077a.k(i, i2);
    }

    public final void s(int i, long j) {
        this.f10077a.m(i, j);
    }
}
