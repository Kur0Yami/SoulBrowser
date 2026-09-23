package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzxq implements zzaap {

    /* renamed from: a, reason: collision with root package name */
    public final zzxp f9873a;

    public zzxq(zzxp zzxpVar) {
        Charset charset = zzym.f9882a;
        this.f9873a = zzxpVar;
        zzxpVar.f9872a = this;
    }

    public final void a(int i, List list) {
        boolean z = list instanceof zzyu;
        int i2 = 0;
        zzxp zzxpVar = this.f9873a;
        if (z) {
            zzyu zzyuVar = (zzyu) list;
            while (i2 < list.size()) {
                Object zza = zzyuVar.zza();
                if (zza instanceof String) {
                    zzxpVar.i(i, (String) zza);
                } else {
                    zzxpVar.j(i, (zzxk) zza);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzxpVar.i(i, (String) list.get(i2));
            i2++;
        }
    }

    public final void b(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f9873a.j(i, (zzxk) list.get(i2));
        }
    }

    public final void c(int i, int i2) {
        this.f9873a.e(i, i2);
    }

    public final void d(int i, long j) {
        this.f9873a.f(i, j);
    }

    public final void e(int i, long j) {
        this.f9873a.g(i, j);
    }

    public final void f(float f, int i) {
        this.f9873a.e(i, Float.floatToRawIntBits(f));
    }

    public final void g(double d, int i) {
        this.f9873a.g(i, Double.doubleToRawLongBits(d));
    }

    public final void h(int i, int i2) {
        this.f9873a.c(i, i2);
    }

    public final void i(int i, long j) {
        this.f9873a.f(i, j);
    }

    public final void j(int i, int i2) {
        this.f9873a.c(i, i2);
    }

    public final void k(int i, long j) {
        this.f9873a.g(i, j);
    }

    public final void l(int i, int i2) {
        this.f9873a.e(i, i2);
    }

    public final void m(int i, boolean z) {
        this.f9873a.h(i, z);
    }

    public final void n(int i, zzxk zzxkVar) {
        this.f9873a.j(i, zzxkVar);
    }

    public final void o(int i, int i2) {
        this.f9873a.d(i, i2);
    }

    public final void p(int i, int i2) {
        this.f9873a.d(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void q(int i, long j) {
        this.f9873a.f(i, (j >> 63) ^ (j + j));
    }

    public final void r(int i, Object obj, zzzs zzzsVar) {
        zzwz zzwzVar = (zzwz) obj;
        zzxp zzxpVar = this.f9873a;
        zzxpVar.b(i, 2);
        zzxpVar.m(zzwzVar.b(zzzsVar));
        zzzsVar.g(zzwzVar, this);
    }

    public final void s(int i, Object obj, zzzs zzzsVar) {
        zzxp zzxpVar = this.f9873a;
        zzxpVar.b(i, 3);
        zzzsVar.g((zzwz) obj, this);
        zzxpVar.b(i, 4);
    }
}
