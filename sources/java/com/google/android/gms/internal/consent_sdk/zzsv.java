package com.google.android.gms.internal.consent_sdk;

import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzsv {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f10116a;

    public zzsv(Unsafe unsafe) {
        this.f10116a = unsafe;
    }

    public abstract double a(long j, Object obj);

    public abstract float b(long j, Object obj);

    public abstract void c(Object obj, long j, boolean z);

    public abstract void d(Object obj, long j, byte b);

    public abstract void e(Object obj, long j, double d);

    public abstract void f(Object obj, long j, float f);

    public abstract boolean g(long j, Object obj);
}
