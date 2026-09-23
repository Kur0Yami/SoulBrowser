package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
abstract class zzmu {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f10409a;

    public zzmu(Unsafe unsafe) {
        this.f10409a = unsafe;
    }

    public final int a(Class cls) {
        return this.f10409a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f10409a.arrayIndexScale(cls);
    }

    public final void c(Field field) {
        this.f10409a.objectFieldOffset(field);
    }
}
