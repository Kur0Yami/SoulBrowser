package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzidl {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f8952a;

    public zzidl(Unsafe unsafe) {
        this.f8952a = unsafe;
    }

    public abstract void a(Object obj, long j, byte b);

    public abstract boolean b(long j, Object obj);

    public abstract void c(Object obj, long j, boolean z);

    public abstract float d(long j, Object obj);

    public abstract void e(Object obj, long j, float f);

    public abstract double f(long j, Object obj);

    public abstract void g(Object obj, long j, double d);

    public abstract byte h(long j);

    public abstract void i(long j, byte[] bArr, long j2, long j3);
}
