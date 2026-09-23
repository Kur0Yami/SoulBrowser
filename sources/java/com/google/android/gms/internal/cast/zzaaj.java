package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzaaj {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f9607a;

    public zzaaj(Unsafe unsafe) {
        this.f9607a = unsafe;
    }

    public abstract void a(Object obj, long j, byte b);

    public abstract boolean b(long j, Object obj);

    public abstract void c(Object obj, long j, boolean z);

    public abstract float d(long j, Object obj);

    public abstract void e(Object obj, long j, float f);

    public abstract double f(long j, Object obj);

    public abstract void g(Object obj, long j, double d);
}
