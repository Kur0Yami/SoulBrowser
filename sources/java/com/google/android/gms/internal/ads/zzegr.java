package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzegr {

    /* renamed from: a, reason: collision with root package name */
    public long f6486a = 0;
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f6487c = 0;
    public long d = 0;
    public long e = 0;
    public final Object f = new Object();
    public final Object g = new Object();
    public final Object h = new Object();
    public final Object i = new Object();
    public final Object j = new Object();

    public final synchronized void a(long j) {
        synchronized (this.f) {
            this.f6486a = j;
        }
    }

    public final synchronized long b() {
        long j;
        synchronized (this.f) {
            j = this.f6486a;
        }
        return j;
    }

    public final void c(int i) {
        synchronized (this.g) {
            this.b = i;
        }
    }

    public final int d() {
        int i;
        synchronized (this.g) {
            i = this.b;
        }
        return i;
    }

    public final synchronized long e() {
        long j;
        synchronized (this.i) {
            j = this.d;
        }
        return j;
    }

    public final synchronized long f() {
        long j;
        synchronized (this.j) {
            j = this.e;
        }
        return j;
    }
}
