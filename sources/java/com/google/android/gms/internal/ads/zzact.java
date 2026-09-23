package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.view.Surface;

/* loaded from: classes.dex */
public final class zzact {

    /* renamed from: a, reason: collision with root package name */
    public final zzabp f3908a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public zzacp f3909c;
    public boolean d;
    public Surface e;
    public float f;
    public float g;
    public float h;
    public float i;
    public int j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzabp, java.lang.Object] */
    public zzact(Context context) {
        this.b = context;
        ?? obj = new Object();
        obj.f3879a = new zzabo();
        obj.b = new zzabo();
        obj.d = -9223372036854775807L;
        this.f3908a = obj;
        this.f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    public final void a() {
        this.m = 0L;
        this.q = -1L;
        this.n = -1L;
        this.k = 0L;
        this.l = 0L;
    }

    public final void b() {
        float f;
        long j;
        if (Build.VERSION.SDK_INT >= 30 && this.e != null) {
            zzabp zzabpVar = this.f3908a;
            if (zzabpVar.f3879a.b()) {
                if (zzabpVar.f3879a.b()) {
                    zzabo zzaboVar = zzabpVar.f3879a;
                    long j2 = zzaboVar.e;
                    long j3 = 0;
                    if (j2 != 0) {
                        j3 = zzaboVar.f / j2;
                    }
                    f = (float) (1.0E9d / j3);
                } else {
                    f = -1.0f;
                }
            } else {
                f = this.f;
            }
            float f2 = this.g;
            if (f != f2) {
                if (f != -1.0f && f2 != -1.0f) {
                    float f3 = 1.0f;
                    if (zzabpVar.f3879a.b()) {
                        if (zzabpVar.f3879a.b()) {
                            j = zzabpVar.f3879a.f;
                        } else {
                            j = -9223372036854775807L;
                        }
                        if (j >= 5000000000L) {
                            f3 = 0.1f;
                        }
                    }
                    if (Math.abs(f - this.g) < f3) {
                        return;
                    }
                } else if (f == -1.0f && zzabpVar.e < 30) {
                    return;
                }
                this.g = f;
                c(false);
            }
        }
    }

    public final void c(boolean z) {
        Surface surface;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.e) != null && this.j != Integer.MIN_VALUE && surface.isValid()) {
            float f = 0.0f;
            if (this.d) {
                float f2 = this.g;
                if (f2 != -1.0f) {
                    f = this.i * f2;
                }
            }
            if (z || this.h != f) {
                this.h = f;
                zzaco.a(this.e, f);
            }
        }
    }

    public final void d() {
        Surface surface;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.e) != null && this.j != Integer.MIN_VALUE && this.h != 0.0f && surface.isValid()) {
            this.h = 0.0f;
            zzaco.a(this.e, 0.0f);
        }
    }
}
