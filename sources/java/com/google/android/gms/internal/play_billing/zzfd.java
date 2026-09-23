package com.google.android.gms.internal.play_billing;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfd implements zziu {

    /* renamed from: a, reason: collision with root package name */
    public final zzfc f11495a;

    public zzfd(zzfc zzfcVar) {
        Charset charset = zzgb.f11506a;
        this.f11495a = zzfcVar;
        zzfcVar.f11494a = this;
    }

    public final void a(int i, long j) {
        this.f11495a.j(i, j);
    }

    public final void b(int i, int i2) {
        this.f11495a.t(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void c(int i, long j) {
        this.f11495a.v(i, (j >> 63) ^ (j + j));
    }

    public final void d(int i, List list) {
        boolean z = list instanceof zzgk;
        int i2 = 0;
        zzfc zzfcVar = this.f11495a;
        if (z) {
            zzgk zzgkVar = (zzgk) list;
            while (i2 < list.size()) {
                Object zza = zzgkVar.zza();
                if (zza instanceof String) {
                    zzfcVar.q(i, (String) zza);
                } else {
                    zzfcVar.f(i, (zzev) zza);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzfcVar.q(i, (String) list.get(i2));
            i2++;
        }
    }

    public final void e(int i, int i2) {
        this.f11495a.t(i, i2);
    }

    public final void f(int i, long j) {
        this.f11495a.v(i, j);
    }

    public final void g(int i, boolean z) {
        this.f11495a.d(i, z);
    }

    public final void h(int i, zzev zzevVar) {
        this.f11495a.f(i, zzevVar);
    }

    public final void i(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f11495a.f(i, (zzev) list.get(i2));
        }
    }

    public final void j(double d, int i) {
        this.f11495a.j(i, Double.doubleToRawLongBits(d));
    }

    public final void k(int i, int i2) {
        this.f11495a.l(i, i2);
    }

    public final void l(int i, int i2) {
        this.f11495a.h(i, i2);
    }

    public final void m(int i, long j) {
        this.f11495a.j(i, j);
    }

    public final void n(float f, int i) {
        this.f11495a.h(i, Float.floatToRawIntBits(f));
    }

    public final void o(int i, Object obj, zzhm zzhmVar) {
        zzfc zzfcVar = this.f11495a;
        zzfcVar.s(i, 3);
        zzhmVar.h((zzeg) obj, this);
        zzfcVar.s(i, 4);
    }

    public final void p(int i, int i2) {
        this.f11495a.l(i, i2);
    }

    public final void q(int i, long j) {
        this.f11495a.v(i, j);
    }

    public final void r(int i, Object obj, zzhm zzhmVar) {
        zzeg zzegVar = (zzeg) obj;
        zzfc zzfcVar = this.f11495a;
        zzfcVar.s(i, 2);
        zzfcVar.u(zzegVar.c(zzhmVar));
        zzhmVar.h(zzegVar, this);
    }

    public final void s(int i, int i2) {
        this.f11495a.h(i, i2);
    }
}
