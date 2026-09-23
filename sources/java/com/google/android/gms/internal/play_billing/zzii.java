package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class zzii {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f11539a;

    public zzii(Unsafe unsafe) {
        this.f11539a = unsafe;
    }

    public abstract double a(long j, Object obj);

    public abstract float b(long j, Object obj);

    public abstract void c(Object obj, long j, boolean z);

    public abstract void d(Object obj, long j, byte b);

    public abstract void e(Object obj, long j, double d);

    public abstract void f(Object obj, long j, float f);

    public abstract boolean g(long j, Object obj);
}
