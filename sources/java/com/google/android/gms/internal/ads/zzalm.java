package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
abstract class zzalm {
    public zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public zzaer f4164c;
    public zzali d;
    public long e;
    public long f;
    public long g;
    public int h;
    public int i;
    public long k;
    public boolean l;
    public boolean m;

    /* renamed from: a, reason: collision with root package name */
    public final zzalg f4163a = new zzalg();
    public zzalk j = new Object();

    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.zzalk, java.lang.Object] */
    public void a(boolean z) {
        int i;
        if (z) {
            this.j = new Object();
            this.f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.h = i;
        this.e = -1L;
        this.g = 0L;
    }

    public abstract long b(zzer zzerVar);

    public abstract boolean c(zzer zzerVar, long j, zzalk zzalkVar);

    public void d(long j) {
        this.g = j;
    }
}
