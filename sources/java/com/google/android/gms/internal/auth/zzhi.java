package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzhi {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f9569a;

    public zzhi(Unsafe unsafe) {
        this.f9569a = unsafe;
    }

    public abstract double a(long j, Object obj);

    public abstract float b(long j, Object obj);

    public abstract void c(Object obj, long j, boolean z);

    public abstract void d(Object obj, long j, double d);

    public abstract void e(Object obj, long j, float f);

    public abstract boolean f(long j, Object obj);
}
