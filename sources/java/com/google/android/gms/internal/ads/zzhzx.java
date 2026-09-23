package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzx implements zzidu {

    /* renamed from: a, reason: collision with root package name */
    public final zzhzw f8901a;

    public zzhzx(zzhzw zzhzwVar) {
        Charset charset = zzibe.f8915a;
        if (zzhzwVar != null) {
            this.f8901a = zzhzwVar;
            zzhzwVar.f8900a = this;
            return;
        }
        throw new NullPointerException("output");
    }

    public final void a(int i, int i2) {
        this.f8901a.j(i, i2);
    }

    public final void b(int i, long j) {
        this.f8901a.k(i, j);
    }

    public final void c(int i, long j) {
        this.f8901a.m(i, j);
    }

    public final void d(float f, int i) {
        this.f8901a.j(i, Float.floatToRawIntBits(f));
    }

    public final void e(double d, int i) {
        this.f8901a.m(i, Double.doubleToRawLongBits(d));
    }

    public final void f(int i, int i2) {
        this.f8901a.h(i, i2);
    }

    public final void g(int i, long j) {
        this.f8901a.k(i, j);
    }

    public final void h(int i, int i2) {
        this.f8901a.h(i, i2);
    }

    public final void i(int i, long j) {
        this.f8901a.m(i, j);
    }

    public final void j(int i, int i2) {
        this.f8901a.j(i, i2);
    }

    public final void k(int i, boolean z) {
        this.f8901a.n(i, z);
    }

    public final void l(int i, zzhzl zzhzlVar) {
        this.f8901a.p(i, zzhzlVar);
    }

    public final void m(int i, int i2) {
        this.f8901a.i(i, i2);
    }

    public final void n(int i, int i2) {
        this.f8901a.i(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void o(int i, long j) {
        this.f8901a.k(i, (j >> 63) ^ (j + j));
    }

    public final void p(int i, Object obj, zzicu zzicuVar) {
        zzhyu zzhyuVar = (zzhyu) obj;
        zzhzw zzhzwVar = this.f8901a;
        zzhzwVar.g(i, 2);
        zzhzwVar.x(zzhyuVar.j(zzicuVar));
        zzicuVar.i(zzhyuVar, this);
    }

    public final void q(int i, Object obj, zzicu zzicuVar) {
        zzhzw zzhzwVar = this.f8901a;
        zzhzwVar.g(i, 3);
        zzicuVar.i((zzhyu) obj, this);
        zzhzwVar.g(i, 4);
    }
}
